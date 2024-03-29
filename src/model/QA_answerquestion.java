package model;

public class QA_answerquestion {
    private String question;
    private String answer_A;
    private String answer_B;
    private String answer_C;
    private String answer_D;
    private String answer;
    public QA_answerquestion(){

    }
    public QA_answerquestion(String question, String answer_A, String answer_B, String answer_C, String answer_D, String answer){
        this.question = question;
        this.answer_A = answer_A;
        this.answer_B = answer_B;
        this.answer_C = answer_C;
        this.answer_D = answer_D;
        this.answer = answer;
    }
    public String getAnswer_A() {
        return answer_A;
    }

    public String getAnswer_B() {
        return answer_B;
    }

    public String getAnswer_C() {
        return answer_C;
    }

    public String getQuestion() {
        return question;
    }

    public void setAnswer_A(String answer_A) {
        this.answer_A = answer_A;
    }

    public void setAnswer_B(String answer_B) {
        this.answer_B = answer_B;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer_D() {
        return answer_D;
    }

    public void setAnswer_C(String answer_C) {
        this.answer_C = answer_C;
    }

    public void setAnswer_D(String answer_D) {
        this.answer_D = answer_D;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return question +" "+answer_A+" " +answer_B+" "+answer_C+" "+answer_D +" "+answer;
    }
}
