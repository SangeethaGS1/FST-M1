import pytest
import math

@pytest.mark.reg2
def test_sum():
    num1 = 2
    num2 = 3
    sum = num1 + num2
    assert sum == 5

@pytest.mark.reg1
def test_diff():
    num1=30
    num2=50
    diff = num2 - num1
    assert diff == 20

@pytest.mark.reg2
def test_prod():
    num1=3
    num2=2
    mul=num1*num2
    assert mul == 6

@pytest.mark.reg1
def test_quo():
    num1=8
    num2=4
    quo = num1/num2
    assert quo == 2
