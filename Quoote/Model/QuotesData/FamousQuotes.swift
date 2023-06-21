//
//  FamousQuotes.swift
//  Evlla
//
//  Created by Dambar Bista on 5/7/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import Foundation

struct FamousQuotes {
    var catagories: [QuotesCatagory] = [
        QuotesCatagory(name: "Top 100", image: "heart", color: .green, quotes: [
            "You never know how strong you are until being strong is your only choice.",
            "Every pain is a gift. Every pain is an opportunity.",
            "What hurts us is what heals us.",
            "Out of suffering have emerged the strongest souls; the most massive characters are seared with scars.",
            "People go through so much pain trying to avoid pain.",
            "Pain makes me grow. Growing is what I want. Therefore, for me pain is pleasure.",
            "It is when I struggle that I strengthen. It is when challenged to my core that I learn the depth of who I am.",
            "Behind every beautiful thing, there’s been some kind of pain.",
            "I’ve decided to make myself strong. As far as I can tell, that’s all I can do.",
            "No matter what they say, no matter what they think, do the right thing.",
            "Fire is the test of gold; adversity, of strong men.",
            "The art of life is not controlling what happens to us, but using what happens to us.",
            "Don’t go to the doctor with every distemper, nor to the lawyer with every quarrel, nor to the pot for every thirst.",
            "So other people hurt me? That’s their problem. Their character and actions are not mine.",
            "Either you reach a higher point today, or you exercise your strength in order to be able to climb higher tomorrow.",
            "To try to avoid pain is to give too many f*cks about pain. In contrast, if you’re able to not give a f*ck about pain, you become unstoppable.",
            "Mankind has never achieved greatness but through suffering.",
            "If you only walk on sunny days you’ll never reach your destination.",
            "There’s no hope if people expect life to be easy. There’s a future if people believe they must be strong.",
            "After crosses and losses men grow humbler and wiser.",
            "If it scares me, there’s magic on the other side.",
            "You cannot experience the fullness of your life when you live to avoid hurt.",
            "Most of what we say and do is not essential. If you can eliminate it, you’ll have more time, and more tranquillity. Ask yourself at every moment, “Is this necessary?”",
            "You’re tired and scared. Happens to everyone, okay? Just don’t let your feet stop.",
            "Soon, when all is well, you’re going to look back on this period of your life and be so glad that you never gave up.",
            "Trying and struggling looks like incompetence right up until the moment it looks like success.",
            "No matter what, just keep going.",
            "There are far, far better things ahead than any we leave behind.",
            "But if a thing is humanly possible, consider it to be within your reach.",
            "Don’t worry about all of the steps. Begin.",
            "The path through trouble is always made a step at a time, a breath at a time, a day at a time.",
            "It’s okay to feel lost, it’s okay to feel pain, it’s okay to feel hopeless. What’s not okay is thinking life will be easy. Stay strong my friend.",
            "I will keep preaching this to myself and others: there are no problems, only projects.",
            "Not seeing results? Feel like giving up? Consider this: the last thing to grow on a fruit tree… is the fruit. Doing amazing sh*t takes time. You want that fruit you gotta stay after it.",
            "Get a move on…Don’t worry whether anyone will give you credit for it…Be satisfied with even the smallest progress, and treat the outcome of it all as unimportant.",
            "Pick your one overwhelming desire. It’s okay to suffer over that one.",
            "Once you choose hope, anything’s possible.",
            "We must accept finite disappointment, but never lose infinite hope.",
            "Everything that is done in this world is done by hope.",
            "May your choices reflect your hopes, not your fears.",
            "Hope is being able to see that there is light despite all of the darkness.",
            "Patience is bitter, but its fruit is sweet.",
            "Sit with the pain until it passes, and you will be calmer for the next one.",
            "Without pain, without sacrifice, we would have nothing.",
            "Let go of the past.",
            "Adversity is the first path to truth.",
            "Great things never came from comfort zones.",
            "Although the world is full of suffering, it is full also of the overcoming of it.",
            "True self-discovery begins where your comfort zone ends.",
            "One word frees us of all the weight and pain of life: that word is love.",
            "New beginnings are often disguised as painful endings.",
            "If you are distressed by anything external, the pain is not due to the thing itself, but to your estimate of it; and this you have the power to revoke at any moment.",
            "The ideals which have always shone before me and filled me with joy are goodness, beauty, and truth.",
            "Sometimes people don’t want to hear the truth because they don’t want their illusions destroyed.",
            "Know that you don’t know. That is superior.",
            "Knowledge will give you power, but character respect.",
            "The dumbest people I know are those who know it all.",
            "Wisdom is not a product of schooling but of the lifelong attempt to acquire it.",
            "Knowledge is a process of piling up facts; wisdom lies in their simplification.",
            "There is no fear for one whose mind is not filled with desires.",
            "A man is not called wise because he talks and talks again; but if he is peaceful, loving and fearless then he is in truth called wise.",
            "Gratitude turns what we have into enough.",
            "This is a wonderful day. I’ve never seen this one before.",
            "An early-morning walk is a blessing for the whole day.",
            "A relationship where you can be weird together is your best choice.",
            "Life appears to me too short to be spent in nursing animosity or registering wrongs.",
            "Treat everyone as if they were a guest in your own house, because in reality, they are a guest in your own world.",
            "There’s only one thing more precious than our time and that’s who we spend it on.",
            "A calm and modest life brings more happiness than the pursuit of success combined with constant restlessness.",
            "Stress and confusion come from being busy. Peace and clarity come from slowing down and stilling your waters.",
            "In a world deluged by irrelevant information, clarity is power.",
            "Success demands singleness of purpose.",
            "Focus does not mean saying yes, it means saying no.",
            "Only through focus can you do world-class things, no matter how capable you are.",
            "It is those who concentrate on but one thing at a time who advance in this world.",
            "Effectiveness begins with elimination. Choose your ignorances as carefully as your interests.",
            "Too much sugar leads to a heavy body, and too many distractions lead to a heavy mind.",
            "I’ll live the focused life, because it’s the best kind there is.",
            "If I had an hour to solve a problem, I’d spend 55 minutes thinking about the problem and 5 minutes thinking about solutions.",
            "Where you are headed is more important than how fast you are going. Rather than always focusing on what’s urgent, learn to focus on what is really important.",
            "You will never reach your destination if you stop and throw stones at every dog that barks.",
            "Our life always expresses the result of our dominant thoughts.",
            "It is good to have a goal, but bad to let your goal have you. Focus is good, but focus that is too narrow becomes blindness.",
            "The finest steel has to go through the hottest fire.",
            "My religion is very simple. My religion is kindness.",
            "And know that I am with you always; yes, to the end of time.",
            "We are twice armed if we fight with faith.",
            "A leader is a dealer in hope.",
            "We can do anything we want to if we stick to it long enough.",
            "If you don’t like something, change it. If you can’t change it, change your attitude.",
            "If you want to make enemies, try to change something.",
            "One child, one teacher, one book, one pen can change the world.",
            "The mind, once stretched by a new idea, never returns to its original dimensions.",
            "There is no greater education than one that is self-driven.",
            "You should learn from your competitor, but never copy. Copy and you die.",
            "Krishna says in the Gita, “The worst crime in the world is indecision.",
            "I have lived my life according to this principle: If I’m afraid of it, then I must do it.",
            "A hero is no braver than an ordinary man, but he is brave five minutes longer.",
            "There are times when explanations, no matter how reasonable, just don’t seem to help.",
            "You are strong. You are beautiful. You are resilient. You are loved. You are capable. You are not weak. You are not defected. You are not weird. You are not a lost cause. You are not different.",
            "It is easy to be heavy: hard to be light.",
            "No storm, not even the one in your life, can last forever. The storm is just passing over.",
            "The shadows are as important as the light.",
            "Respect yourself and others will respect you.",
            "I think the reward for conformity is that everyone likes you except yourself.",
            "Always be yourself, express yourself, have faith in yourself, do not go out and look for a successful personality and duplicate it.",
            "Be tolerant with others and strict with yourself.",
            "The rich invest in time, the poor invest in money.",
            "If you make meaning, you’ll make money.",
            "Trade money for time, not time for money. You’re going to run out of time first.",
            "My favorite things in life don’t cost any money. It’s really clear that the most precious resource we all have is time.",
            "It is health that is real wealth and not pieces of gold and silver.",
            "He who has health has hope; and he who has hope has everything.",
            "You don’t choose your family. They are god’s gift to you, as you are to them.",
            "The more you’re loving and understanding, the more your kids will sing.",
            "A man can’t make a place for himself in the sun if he keeps taking refuge under the family tree.",
            "The greatest gifts you can give your children are the roots of responsibility and the wings of independence.",
            "The sign of intelligence is that you are constantly wondering. Idiots are always dead sure about every damn thing they are doing in their life.",
            "If you ask a tree how he feels to know that he's spreading his fragrance and making people happy, I don't think a tree looks at it that way. I am just like that, and it is just my nature to be like this.",
            "Doubt is not a pleasant condition, but certainty is absurd.",
            "Science is organized knowledge. Wisdom is organized life.",
            "Do not pray for easy lives, pray to be stronger men.",
            "Life is never easy. There is work to be done and obligations to be met – obligations to truth, to justice, and to liberty.",
            "If I’d observed all the rules, I’d never got anywhere.",
            "Two roads diverged in a wood, and I took the one less traveled by, and that has made all the difference.",
            "When you are happy you can forgive a great deal.",
            "Mistakes are the price of an interesting life.",
            "My life didn’t please me, so I created my life.",
            "Elegance is when the inside is as beautiful as the outside.",
            "The road to success is not easy to navigate, but with hard work, drive and passion, it’s possible to achieve the American dream.",
            "Live for each second without hesitation.",
            "What is drama, after all, but life with the dull bits cut out.",
            "Be cool to people. Be nice to as many people as you can. Smile to as many people as you can, and have them smile back at you.",
            "I’m an all-or-nothing kind of person, and when I become interested in something, I give it my all.",
            "There is no happiness. There is only concentration.",
            "It’s not about an opening weekend. It’s about a career, building a set of films you’re proud of. Period.",
            "Life is like riding a bicycle. To keep your balance, you must keep moving.",
            "The best answer to anger is silence.",
            "To live happily is an inward power of the soul.",
            "Confidence is contagious. So is a lack of confidence.",
            "The thing to do is enjoy the ride while you’re on it.",
            "Too many people are hungry not because there is dearth of food. It is because there is dearth of love and care in human hearts.",
            "The most beautiful moments in life are moments when you are expressing your joy, not when you are seeking it.",
            "When pain, misery, or anger happen, it is time to look within you, not around you.",
            "The formula of happiness and success is just being actually yourself, in the most vivid possible way you can.",
            "Happiness lies in the joy of achievement and the thrill of creative effort.",
            "Good friends, good books, and a sleepy conscience: this is the ideal life.",
            "A man who dares to waste one hour of time has not discovered the value of life.",
            "God gave us the gift of life; it is up to us to give ourselves the gift of living well.",
            "You can discover more about a person in an hour of play than in a year of conversation.",
            "Life is a succession of lessons which must be lived to be understood.",
            "If you don’t live your life, who the f*ck will?",
            "You cannot find peace by avoiding life."
        ])
    ]
}