class Question
    attr_accessor :prompt, :answer

    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

p1 = "What color are apples?\n(a) red\n(b) blue\n(c) purple"
p2 = "What color are oranges?\n(a) red\n(b) orange\n(c) purple"
p3 = "What color are bannanas?\n(a) red\n(b) blue\n(c) yellow"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "b"),
    Question.new(p3, "c")
]

def run_quiz(questions)
    answer = ""
    score = 0

    for question in questions
        puts question.prompt
        answer = gets.chomp()

        if answer == question.answer
            score += 1
        end
    end

    puts ("You got " + score.to_s + " out of " + questions.length.to_s)
end

run_quiz(questions)