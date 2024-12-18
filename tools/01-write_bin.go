package main

import (
	"fmt"
	"os"
	"strconv"
)

// writeDataToBinaryFile 将数据写入二进制文件
func writeDataToBinaryFile(begin, end int, binaryFile string) {
	binFile, err := os.Create(binaryFile)
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

// dec2DoubleHex 将10进制数转为两字节的16进制数写入文件
func dec2DoubleHex(begin, end int, binaryFile string) {
	binFile, err := os.Create(binaryFile)
	if err != nil {
		fmt.Println("Error creating file: ", err)
		return
	}
	defer binFile.Close()

	for i := begin; i < end; i++ {
		// Step 1: 格式化为长度为4的十进制字符串
		decimalStr := fmt.Sprintf("%04d", i)
		fmt.Println(decimalStr)

		// Step 2: 转为两位十六进制数
		highByte, _ := strconv.ParseUint(decimalStr[:2], 16, 8) // 前两位
		lowByte, _ := strconv.ParseUint(decimalStr[2:], 16, 8)  // 后两位
		fmt.Printf("Decimal: %s -> Hex: [%02x %02x]\n", decimalStr, highByte, lowByte)

		buf := []byte{byte(lowByte), byte(highByte)}
		fmt.Println(buf)
		// Step 3: 写入文件
		_, err = binFile.Write(buf)
		if err != nil {
			fmt.Println("Error writing to file: ", err)
			return
		}
	}
}

func main() {
	// writeDataToBinaryFile(0, 256, "binaryFile.bin")
	dec2DoubleHex(0, 256, "test.bin")
}
