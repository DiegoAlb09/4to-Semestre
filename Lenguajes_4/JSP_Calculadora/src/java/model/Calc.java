/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
/**
 *
 * @author diego
 */
public class Calc implements Serializable{
private static final long serialVersionUID = 1L;

private int num1;
private int num2;
private int result;
private String operand;

public Calc() {
    super();
}

public Calc(int num1, int num2,  String operand) {
    super();
    this.num1 = num1;
    this.num2 = num2;
    this.operand = operand;
}




public int getNum1() {
    return num1;
}

public void setNum1(int num1) {
    this.num1 = num1;
}

public int getNum2() {
    return num2;
}

public void setNum2(int num2) {
    this.num2 = num2;
}

public int getResult() {
    setResult();
    return result;
}

public void setResult() {
  
    switch (operand) {
        case "+":
            result = num1 + num2;
            this.result = result;
            break;
        case "-":
            result = num1 - num2;
            this.result = result;
            break;
        case "*":
            result = num1 * num2;
            this.result = result;    
            break;
        case "/":
            result = num1 / num2;
            this.result = result;
            break;
        default:
            break;
    }
}

public String getResultS()
{
    Integer rst = getResult();
    
    return rst.toString();
}


public String getOperand() {
    return operand;
}

public void setOperand(String operand) {
    this.operand = operand;
}}

