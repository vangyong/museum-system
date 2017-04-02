package com.wisesoft.util;

public class Calculator {
	// 用于存储运行结果
	private static int result;

	public void add(int n) {
		result = result + n;
	}
	// Bug: 正确的应该是 result =result-n
	public void substract(int n) {
		result = result - 1;
	}
	public void multiply(int n) {
	}
	// 此方法尚未写好
	public void divide(int n) {
		result = result / n;
	}
	public void square(int n) {
		result = n * n;
	}
	// Bug : 死循环
	public void squareRoot(int n) {
		for (;;)
			;
	}
	// 将结果清零
	public void clear() {
		result = 0;
	}
	public int getResult() {
		return result;
	}
}
