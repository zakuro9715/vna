typedef struct {
  void* _object;
  int _interface_index;
} interface_type;

static void* interface_to_struct_ptr(void* interface) {
  return ((interface_type*)(interface))->_object;
}
