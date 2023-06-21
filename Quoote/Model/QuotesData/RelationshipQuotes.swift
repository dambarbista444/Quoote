//
//  RelationshipQuotes.swift
//  Evlla
//
//  Created by Dambar Bista on 3/30/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct QuotesCatagory: Hashable {
    let id = UUID()
    let name: String
    let image: String
    let color: Color?
    let quotes: [String]
    
    init(name: String, image: String, color: Color? = nil, quotes: [String]) {
        self.name = name
        self.image = image
        self.color = color
        self.quotes = quotes
    }
}

struct Relationship {
    var catagories: [QuotesCatagory] = [
        // MARK: - Love
        QuotesCatagory(name: "Love", image: "heart", color: .red, quotes: [
            "Love is not just looking at each other, it's looking in the same direction. ",
            "The best thing to hold onto in life is each other. ",
            "The greatest happiness of life is the conviction that we are loved. ",
            "The only thing we never get enough of is love; and the only thing we never give enough of is love. ",
            "Being deeply loved by someone gives you strength, while loving someone deeply gives you courage. ",
            "To be brave is to love someone unconditionally, without expecting anything in return. ",
            "Love is composed of a single soul inhabiting two bodies. ",
            "Love is when you meet someone who tells you something new about yourself. ",
            "Love is not about possession. Love is about appreciation. ",
            "Love is an untamed force. When we try to control it, it destroys us. When we try to imprison it, it enslaves us. When we try to understand it, it leaves us feeling lost and confused. ",
            "Love is a force more formidable than any other. It is invisible—it cannot be seen or measured, yet it is powerful enough to transform you in a moment, and offer you more joy than any material possession could. ",
            "True love is not about loving someone at their best, but loving someone at their worst and still sticking by their side. ",
            "Love is not about how much you say 'I love you,' but how much you prove that it's true. ",
            "Love is like the wind, you can't see it but you can feel it. ",
            "Love is an adventure and a conquest. It survives and develops, like the universe itself, only by perpetual discovery. ",
            "Love is the voice under all silences, the hope which has no opposite in fear; the strength so strong mere force is feebleness: the truth more first than sun, more last than star. ",
            "We loved with a love that was more than love. ",
            "To love is nothing. To be loved is something. But to love and be loved, that’s everything. ",
            "Love is a promise, love is a souvenir, once given never forgotten, never let it disappear. ",
            "Love is like a friendship caught on fire. In the beginning a flame, very pretty, often hot and fierce, but still only light and flickering. As love grows older, our hearts mature and our love becomes as coals, deep-burning and unquenchable. ",
            "The art of love is largely the art of persistence. ",
            "The best love is the kind that awakens the soul and makes us reach for more, that plants a fire in our hearts and brings peace to our minds. And that’s what you’ve given me. That’s what I’d hoped to give you forever. ",
            "Love is an endless act of forgiveness. Forgiveness is me giving up the right to hurt you for hurting me. ",
            "Love is when you meet someone who tells you something new about yourself. ",
            "Love is never wrong. ",
            "The best and most beautiful things in this world cannot be seen or even heard, but must be felt with the heart. ",
            "The best love is the kind that awakens the soul and makes us reach for more, that plants a fire in our hearts and brings peace to our minds. And that’s what you’ve given me. That’s what I’d hoped to give you forever. ",
            "Love is a flower that needs sunshine, freedom, and a little rain in order to grow.",
            "Love is the master key that opens the gates of happiness.",
            "Love is a many splendored thing.",
            "Love is patient, love is kind. It does not envy, it does not boast, it is not proud.",
            "Love is not love which alters when it alteration finds, or bends with the remover to remove: O no! it is an ever-fixed mark that looks on tempests and is never shaken; it is the star to every wand'ring bark, whose worth's unknown, although his height be taken.",
            "Love is the only sane and satisfactory answer to the problem of human existence.",
            "Love is the only force capable of transforming an enemy into friend.",
            "Love is a promise, love is a debt. Those who love must always be prepared to pay.",
            "Love is a fire. But whether it is going to warm your hearth or burn down your house, you can never tell.",
            "Love is a flower that needs sunshine, freedom, and a little rain in order to grow.",
        ]),
        
        // MARK: - Break up
        QuotesCatagory(name: "Heart break", image: "heartBreak", color: .brown, quotes: [
            "Sometimes good things fall apart so better things can fall together.",
            "The only way to get over a broken heart is to learn to love again.",
            "The best way to mend a broken heart is time and girlfriends.",
            "If you really love something, set it free. If it comes back, it's yours. If not, it wasn't meant to be.",
            "A breakup is like a broken mirror. It is better to leave it broken than hurt yourself trying to fix it.",
            "I don't hate you, I'm just disappointed you turned into everything you said you'd never be.",
            "Breaking up is like knocking over a Coke machine. You can't do it in one push; you got to rock it back and forth a few times, and then it goes over.",
            "I'm not crying because of you; you're not worth it. I'm crying because my delusion of who you were was shattered by the truth of who you are.",
            "I think its time to move on, because the future is looking bright and the past is already gone.",
            "Sometimes, two people have to fall apart to realize how much they need to fall back together.",
            "Letting go doesn't mean that you don't care about someone anymore. It's just realizing that the only person you really have control over is yourself.",
            "Pain makes you stronger, fear makes you braver, heartbreak makes you wiser.",
            "It's hard to tell your mind to stop loving someone when your heart still does.",
            "The hottest love has the coldest end.",
            "Don't cry when the sun is gone because the tears won't let you see the stars.",
            "If someone makes you miserable more than they make you happy, then it's time to let them go, no matter how much you love them.",
            "It's better to have loved and lost than to have to do forty pounds of laundry a week.",
            "The emotion that can break your heart is sometimes the very one that heals it.",
            "The pain of parting is nothing to the joy of meeting again.",
            "Don't waste your time on someone who only wants you around when it's convenient for them.",
            "It's better to break your own heart by leaving, rather than having that person break your heart every day you're with them.",
            "You can love someone so much, but you can never love someone as much as you can miss them.",
            "It's better to be unhappy alone than unhappy with someone.",
            "You never lose by loving. You always lose by holding back.",
            "The saddest thing about love is that not only that it cannot last forever, but that heartbreak is soon forgotten.",
            "I'm thankful for my struggle because without it I wouldn't have stumbled across my strength.",
            "Don't change yourself so people will like you. Be yourself and the right people will love the real you.",
            "Sometimes, the best revenge is to smile and move on.",
            "I don't want to be your whole life, just your favorite part.",
            "I don't know where I'm going, but I'm on my way.",
            "You can't start the next chapter of your life if you keep re-reading the last one.",
            "It is better to be alone than being with someone who makes you feel alone.",
            "You were given this life because you are strong enough to live it.",
            "Don't let the heart that didn't love you keep you from the one that will."
        ]),
        
        // MARK: - Family
        QuotesCatagory(name: "Family", image: "family", color: .green, quotes: [
            "Family is not an important thing. It's everything.",
            "In family life, love is the oil that eases friction, the cement that binds closer together, and the music that brings harmony.",
            "Family is where life begins and love never ends.",
            "The love of family is life's greatest blessing.",
            "Families are like branches on a tree. We grow in different directions yet our roots remain as one.",
            "The memories we make with our family is everything.",
            "Family is the anchor that holds us through life's storms.",
            "Family: where life begins and love never ends.",
            "A family is a little world created by love.",
            "A happy family is but an earlier heaven.",
            "Family is a gift that lasts forever.",
            "The family is the first essential cell of human society.",
            "Family: we may not have it all together, but together we have it all.",
            "Families are the compass that guides us. They are the inspiration to reach great heights, and our comfort when we occasionally falter.",
            "Family is not an important thing, it's everything.",
            "Families are the tie that reminds us of yesterday, provide strength and support today, and give us hope for tomorrow.",
            "A family is a place where minds come in contact with one another.",
            "The family is one of nature's masterpieces.",
            "Family is the most important thing in the world.",
            "Our family is a circle of strength and love.",
            "Family means no one gets left behind or forgotten.",
            "The greatest gift of life is family.",
            "A family is a little world created by love.",
            "A happy family is a reflection of a good father and a loving mother.",
            "A family is a gift that cannot be bought, nor sold, nor traded.",
            "A family doesn't need to be perfect, it just needs to be united.",
            "A family is a link to our past and a bridge to our future.",
            "Family is not about blood. It's about who is willing to hold your hand when you need it the most.",
            "Family is the heart of a home.",
            "Family is the most important thing in the world.",
            "The love in our family flows strong and deep, leaving us memories to treasure and keep.",
            "Family is where life begins and love never ends.",
            "A family is a place where minds come in contact with one another.",
            "A family is a little world created by love.",
            "A happy family is a reflection of a good father and a loving mother.",
            "The family is one of nature's masterpieces.",
            "Family is the most important thing in the world.",
            "Family is the first essential cell of human society.",
            "The family is the test of freedom; because the family is the only thing that the free man makes for himself and by himself.",
            "A family is a haven of rest, a sanctuary of peace and most of all, a harbor of love.",
            "Families are like fudge - mostly sweet with a few nuts.",
            "Family is a life jacket in the stormy sea of life.",
            "Family and friends are hidden treasures, seek them and enjoy their riches.",
            "The family is the nucleus of civilization.",
            "The family is the center of life, and it is the key to eternal happiness.",
            "A family is a unit composed not only of children but of men, women, an occasional animal, and the common cold.",
            "The family is one of nature's masterpieces.",
        ]),
        
        // MARK: - Friendship
        QuotesCatagory(name: "Friendship", image: "friendship", color: .yellow, quotes: [
            "A true friend is someone who is there for you when he'd rather be anywhere else.",
            "A friend is one who knows you and loves you just the same.",
            "The only way to have a friend is to be one.",
            "True friendship is like sound health; the value of it is seldom known until it is lost.",
            "My best friend is the one who brings out the best in me.",
            "A friend is someone who gives you total freedom to be yourself.",
            "A good friend is a connection to life — a tie to the past, a road to the future, the key to sanity in a totally insane world.",
            "A true friend never gets in your way unless you happen to be going down.",
            "A true friend is someone you can disagree with and still remain friends.",
            "A friend is someone who understands your past, believes in your future, and accepts you just the way you are.",
            "A true friend is someone who thinks that you are a good egg even though he knows that you are slightly cracked.",
            "A true friend is someone who is always there during the ups and downs, I actually have quite a few of them, they're called tacos.",
            "Friends are the siblings God never gave us.",
            "It is one of the blessings of old friends that you can afford to be stupid with them.",
            "A real friend is one who walks in when the rest of the world walks out.",
            "In everyone's life, at some time, our inner fire goes out. It is then burst into flame by an encounter with another human being. We should all be thankful for those people who rekindle the inner spirit.",
            "Friendship is born at that moment when one person says to another: 'What! You too? I thought I was the only one.'",
            "A true friend is someone who sees the pain in your eyes while everyone else believes the smile on your face.",
            "I don't need a friend who changes when I change and who nods when I nod; my shadow does that much better.",
            "Friendship is always a sweet responsibility, never an opportunity.",
            "The most beautiful discovery true friends make is that they can grow separately without growing apart.",
            "It is not a lack of love, but a lack of friendship that makes unhappy marriages.",
            "The greatest gift of life is friendship, and I have received it.",
            "Friendship is the only cement that will ever hold the world together.",
            "A true friend never gets in your way unless you happen to be going down.",
            "A true friend is one who overlooks your failures and tolerates your success!",
            "A true friend never judges, only listens and understands.",
            "True friendship multiplies the good in life and divides its evils. Strive to have friends, for life without friends is like life on a desert island… to find one real friend in a lifetime is good fortune; to keep them is a blessing.",
            "A true friend is someone who is there for you when they'd rather be anywhere else.",
            "Friendship is the only thing that can't be bought or sold, but it's the greatest gift one can give and receive.",
            "True friends are those who came into your life, saw the most negative part of you, but are not ready to leave you, no matter how contagious you are to them.",
            "True friendship is never serene.",
            "A true friend is someone who is always there, during the good times and the bad times.",
            "The best way to mend a broken heart is time and girlfriends.",
        ])
    ]
}
