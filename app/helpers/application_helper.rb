module ApplicationHelper
  def flames_relation_hint(relation)
    hints = {
      "Friendship" => "Friends Forever...!!",
      "Love" => "Hurray...!! Love is in the air.",
      "Affair" => "Ouch..!! Am I allowed to say that?",
      "Marriage" => "Marriage...!! You made it!!",
      "Enmity" => "Grrr...!! Be Catious.",
      "Sisterhood" => "Oops...!! Sisterly love."
    }

    return hints[relation]
  end
end
