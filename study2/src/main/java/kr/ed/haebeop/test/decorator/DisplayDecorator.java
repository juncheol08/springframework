package kr.ed.haebeop.test.decorator;

public class DisplayDecorator extends Display{
    private final Display decoratedDisplay;

    public DisplayDecorator(Display decoratedDisplay) {
        this.decoratedDisplay = decoratedDisplay;
    }

    public void draw(){
        decoratedDisplay.draw();
    }
}
