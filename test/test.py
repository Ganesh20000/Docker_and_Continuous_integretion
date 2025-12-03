from src.math_operation import add,sub



def test_add():
    assert add(2,3)==5
    assert add(1,3)==4
    assert add(3,4)==7
    assert add(1,2)==3



def test_sub():
    assert sub(5,2)==3
    assert sub(2,3)==-1
    assert sub(1,1)==0
    assert sub(3,2)==1
    assert sub(5,3)==2
    assert sub(10,4)==6