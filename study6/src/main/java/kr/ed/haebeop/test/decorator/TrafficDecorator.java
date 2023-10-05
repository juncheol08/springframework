package kr.ed.haebeop.test.decorator;

public class TrafficDecorator extends DisplayDecorator{
    // 기존 표시 클래스 설정
    public TrafficDecorator(Display decoratedDisplay) {
        super(decoratedDisplay);
    }

    public void draw() {
        super.draw();
        drawTraffic();
    }
    private void drawTraffic() {
        System.out.println("\t교통량 표시");
    }
}
