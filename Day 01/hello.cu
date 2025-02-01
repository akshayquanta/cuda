#include <iostream>

__global__ void helloCUDA() {
    printf("Hello from CUDA kernel!\n");
}

int main() {
    helloCUDA<<<1, 1>>>(); // Launch kernel with 1 block and 1 thread
    cudaDeviceSynchronize(); // Ensure kernel execution completes
    return 0;
}
