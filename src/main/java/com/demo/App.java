package com.demo;

public class App {
    public static void main(String[] args) throws InterruptedException {
        System.out.println("Hello! The Java application is successfully running in Docker.");
        while (true) {
            Thread.sleep(10000);
        }
    }
}
