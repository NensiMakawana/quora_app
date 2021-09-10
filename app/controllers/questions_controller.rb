class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :post_answer]
  
  # GET /questions or /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1 or /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # POST /questions or /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def post_answer
    @answer = @question.answers.new(answer_params.merge(user_id: current_user.id))
    if @answer.save
      redirect_to @question, notice: "Your answer posted successfully..." 
    else
      redirect_to @question, notice: "Something wrong..." 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:title, :user_id, :topic_id)
    end

    def answer_params
      params.require(:answer).permit(:question_id, :user_id, :text_answer)
    end
end
