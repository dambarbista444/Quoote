//
//  AuthorQuotes.swift
//  Evlla
//
//  Created by Dambar Bista on 3/30/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import Foundation

struct AuthorProfile {
    var catagories: [QuotesCatagory] = [
        // MARK: - Sadhguru
        QuotesCatagory(name: "Sadhguru", image: "sadhguru", quotes: [
            "The only way to experience true wellbeing is to turn inward. This is what yoga means – not up, not out, but in.",
            "The sign of intelligence is that you are constantly wondering. Idiots are always dead sure about every damn thing they are doing in their life.",
            "How deeply you touch another life is how rich your life is.",
            "The past is memory. The future is imagination. And you are right here, right now.",
            "Don’t be dead serious about your life – it’s just a play."
        ]),
        
        // MARK: - Einstein
        QuotesCatagory(name: "Albert Einstein", image: "einstein", quotes: [
            "Try not to become a man of success, but rather try to become a man of value.",
            "Imagination is more important than knowledge. Knowledge is limited. Imagination encircles the world.",
            "The important thing is not to stop questioning. Curiosity has its own reason for existence.",
            "A person who never made a mistake never tried anything new.",
            "Science without religion is lame, religion without science is blind."
        ]),
        
        // MARK: - Steve Jobs
        QuotesCatagory(name: "Steve Jobs", image: "steve", quotes: [
            "Your time is limited, don't waste it living someone else's life.",
            "Design is not just what it looks like and feels like. Design is how it works.",
            "Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn't really do it, they just saw something. It seemed obvious to them after a while.",
            "We don't get a chance to do that many things, and every one should be really excellent. Because this is our life. Life is brief, and then you die, you know? And we've all chosen to do this with our lives. So it better be damn good. It better be worth it.",
            "I'm convinced that about half of what separates the successful entrepreneurs from the non-successful ones is pure perseverance."
        ]),
        
        // MARK: - Oprah Winfrey
        QuotesCatagory(name: "Oprah Winfrey", image: "oprah", quotes: [
            "The biggest adventure you can ever take is to live the life of your dreams.",
            "The more you praise and celebrate your life, the more there is in life to celebrate.",
            "Think like a queen. A queen is not afraid to fail. Failure is another steppingstone to greatness.",
            "I know for sure that what we dwell on is who we become.",
            "The greatest discovery of all time is that a person can change his future by merely changing his attitude."
        ]),
        
        // MARK: - Maya Angelou
        QuotesCatagory(name: "Maya Angelou", image: "mayaAng", quotes: [
            "I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.",
            "If you don't like something, change it. If you can't change it, change your attitude.",
            "We may encounter many defeats but we must not be defeated.",
            "Success is liking yourself, liking what you do, and liking how you do it.",
            "I've learned that you shouldn't go through life with a catcher's mitt on both hands; you need to be able to throw something back."
        ])
    ]
}




