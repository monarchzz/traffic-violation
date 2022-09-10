export function pagination(array: any[], index: number, size: number) {
  const start = (index - 1) * size;
  const end = start + size;
  return array.slice(start, end);
}

export function toSkip(index: number, size: number) {
  return (index - 1) * size;
}
