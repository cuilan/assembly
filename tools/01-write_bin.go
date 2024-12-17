package main

import (
	"fmt"
	"os"
)

const BINARY_FILE_NAME = "test.bin"

// writeDataToBinaryFile 将数据写入二进制文件
func writeDataToBinaryFile(begin, end int) {
	binFile, err := os.Create(BINARY_FILE_NAME)
	if err != nil {
		fmt.Println("Error creating file: ", err)
		return
	}
	defer binFile.Close()

	for i := begin; i < end; i++ {
		byteData := byte(i)
		_, err := binFile.Write([]byte{byteData})
		if err != nil {
			fmt.Println("Error writing to file: ", err)
			return
		}
	}
}

func main() {
	writeDataToBinaryFile(0, 256)
}
