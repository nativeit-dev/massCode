<template>
  <div
    ref="tree"
    class="tree"
  >
    <div class="tree__inner">
      <AppTreeNode
        v-for="(node, index) in store.clonedNodes"
        ref="node"
        :key="node.id"
        :node="node"
        :nodes="store.clonedNodes!"
        :index="index"
      >
        <template #default="{ node: childNode, deep }">
          <slot
            :node="childNode"
            :deep="deep"
          />
        </template>
      </AppTreeNode>
    </div>
  </div>
</template>

<script setup lang="ts">
import { provide, watch } from 'vue'
import { store } from './composable'
import type { Node } from './types'

import { clone } from './helpers'

interface Props {
  modelValue: Node[] | any[]
  selectedId?: string
  createGhostEl?: Function
}

interface Emits {
  (e: 'update:modelValue', value: Node[]): void
  (e: 'click:node', value: string): void
}

const emit = defineEmits<Emits>()
const props = defineProps<Props>()

const cloneNodes = () => {
  store.clonedNodes = clone(props.modelValue) as Node[]
}

const updateValue = () => emit('update:modelValue', store.clonedNodes)
const clickNode = (id: string) => emit('click:node', id)

provide('updateValue', updateValue)
provide('clickNode', clickNode)

watch(
  () => props.modelValue,
  () => cloneNodes(),
  {
    immediate: true
  }
)

watch(
  () => props.selectedId,
  () => {
    store.selectedId = props.selectedId
  },
  { immediate: true }
)
</script>

<style lang="scss" scoped>
.tree {
  &__inner {
    padding-top: 5px;
  }
}
</style>