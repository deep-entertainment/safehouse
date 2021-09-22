/* Brianna 1

This non-interactive dialog shows Brianna introducing herself and going through Marjorie's testimony. It depicts the extreme stress Marjorie is in, and how horrific the crime she has witnessed was.

Beats: 

* Brianna wants to get to know Marjorie and make sure, she doesn't loose her shit in court
* Marjorie is stressed out and tense
* The wounds from the events Marjorie had to go through haven't healed at all
* Marjorie wants to follow this through though, because she thinks, it's the right thing to do
*/

BRIANNA:

Marjorie, I'm Brianna Alison. I'm the district attorney and will lead the case against Igino Varone.

* [Hello]

    MARJORIE:
    
    (sigh) Hello Brianna.
    
    BRIANNA:
    
    I guess it's not easy.
    
    -> holding_up

* [I know who you are.]

    -> calvin_told_me
    
* [Can we get this over with quickly?]

    MARJORIE:
    
    Hello. Can we get this over with quickly?
    
    BRIANNA:
    
    (determined) Yes, of course.
    
    -> the_story

== calvin_told_me ==

MARJORIE:

Yes, I know who you are. Calvin told me that you'd come.

BRIANNA:

I see.

(friendly) Well. <>-> holding_up

== holding_up ==

{ calvin_told_me:

Have you settled in?

MARJORIE:

Well... yes. I guess. It's... It is like it is.

BRIANNA:

Yes, I understand. It's not easy.

}

* [No]

    MARJORIE:
    
    No, it isn't.
    
    -> manage

* [Hell no]

    MARJORIE:
    
    Hell no!
    
    -> manage

* [I got this]

    MARJORIE
    
    Doesn't matter. I got this. 
    
    -> got_this

= manage

BRIANNA:

But you manage?

MARJORIE:

I... (reassuring herself) Yes, I got this.

-> got_this

= got_this

BRIANNA:

Great. Thank you so much for your support.

MARJORIE:

I hope it helps.

BRIANNA:

Oh, it definitely does. -> the_story

== the_story ==

= starting

So, if it's okay with you, can we {|now} go back to last Friday{! please}?

* [Yes]

    MARJORIE:
    
    Yes, okay.
    -> tell

* {starting == 1}[Do we have to?]

    MARJORIE:
    
    Do we have to?
    
    BRIANNA:
    
    -> stalling

* {starting == 1}[I don't want to]

    MARJORIE:
    
    I... I don't want to do this.
    
    BRIANNA:
    
    Marjorie, we need to prepare you for court or you won't be ready when the defense hits you.
    -> stalling

= stalling
    
I know, how hard this is for you.
    
MARJORIE:

(shouts) You don't have a fucking clue!

BRIANNA:

(calming her) Yes, of course. But I understand it. I've supported many clients on their way.

MARJORIE:

(calms down) I guess, they weren't a mess like I am.

BRIANNA:

(firm) Actually. They were even more broken than you are.

MARJORIE:

They were?

BRIANNA:

Yes.

(pause)

-> starting

= tell

BRIANNA:

{not stalling: I know it's hard, Marjorie. But c|C}an you please tell me what happened?

MARJORIE:

Again?

BRIANNA:

Yes. I have to prepare you for the trial. You will have to repeat it there as well and be prepared for questions from the defense attorney.

MARJORIE:

(sighs)

BRIANNA:

Yes, I know. I will try to protect you at all times, but there will be questions the judge will allow that you have to answer. Do you understand?

MARJORIE:

Yes. I guess.

-> continue

== continue ==

BRIANNA

Okay, so what happened Friday night?

MARJORIE

Well, I was out of milk and went to the Shop-O down the street.

BRIANNA

What time was it?

* [6 to 6:30 pm]

    MARJORIE:
    
    6 to 6:30 pm
    
    BRIANNA:
    
    6 or 6:30 pm?
    
    -> wrong_time

* [7 to 7:30 pm]

    MARJORIE:
    
    7 to 7:30 pm
    
    BRIANNA:
    
    7 or 7:30 pm?
    
    -> pinpoint

* [7:30 to 8 pm]

    MARJORIE:
    
    7:30 to 8 pm
    
    BRIANNA
    
    7:30 or 8pm?
    
    -> pinpoint

= wrong_time

-> pinpoint

= pinpoint
    
Can you pinpoint the incident more exactly? The time frame might prove to be important.

MARJORIE

{wrong_time: Oh. No, sorry. }It was 7:30. I watched a comedy show I regularly watch and it had just finished, so I was on the street at seven thirty pm. Five minutes to the Shop-O.

BRIANNA

Good, Continue.

MARJORIE

I walked into the shop and said hi to... To Jazir.

BRIANNA

Jazir Bijarani? The man who owned the shop?

MARJORIE

(sad) Yes. Jazir.

BRIANNA

Okay, please continue.

-> stalling2

== stalling2 ==

* {stalling2.did_stall == 0}[Say nothing]

    MARJORIE
    
    (...)
    
    BRIANNA
    
    Marjorie?
    
    MARJORIE
    
    (startles) Yes?
    
    -> did_stall

* {stalling2.did_stall == 0}[Poor Jazir]

    MARJORIE
    
    Poor Jazir.
    
    BRIANNA
    
    (soft) Oh, Marjorie.
    
    (pause)
    
    Can we continue?
    
    -> did_stall
    
* [I went to the fridge]

    -> continue2

= did_stall

-> stalling2
    
== continue2 ==

MARJORIE

I went to the fridge to get some milk when I heard an argument over at the counter.

{ not stalling2.did_stall:

BRIANNA

You're doing great, Marjorie.

MARJORIE

}

There... I saw Jazir with the guy they arrested.

BRIANNA

Do you know his name?

* [I don't remember]

MARJORIE

I don't remember.

BRIANNA

Please, take your time.

MARJORIE

(beat) Varone.

* [I don't want to say his name]

MARJORIE

I can't say his fucking name.

BRIANNA

Marjorie, please. You need to brace yourself for court.

MARJORIE

(to herself) Fuck.

(aloud) Varone.

* [I know his name]

MARJORIE:

Varone.

-

BRIANNA

Please say his full name.

MARJORIE

(sighs) Igino Varone. He was shouting at Jazir. He was furious. I guess, he didn't know I was around.

BRIANNA

What were they arguing about?

MARJORIE

I don't know. This Varone guy kept shouting: "You think you can fuck with me? You really think you can fuck with me". Those kinds of words.

BRIANNA

And Jazir?

MARJORIE

He was terrified. I mean, we all know who Igino Varone is. You don't want him shouting at you.

BRIANNA

What do you mean that you all know who he is?

* (killer)[Killer]

MARJORIE

He's a killer. Everybody knows that!

* (drug_dealer)[Drug dealer]

MARJORIE

He's selling drugs. Everybody knows that!

* [La famiglia]

MARJORIE

He's "La Famiglia". He's doing all sorts of stuff. Killing people, selling drugs, prostitution...

-

BRIANNA

Marjorie, we don't have any proof of those kind of things.

MARJORIE

{killer || drug_dealer: But he's "la famigila"! E|But e}verybody knows he does that!

BRIANNA

(calming her down) Maybe, but we have to concentrate on this specific case for which we have *your* word and a few dozen clues. Okay?

MARJORIE

Okay.

BRIANNA

Great. Thank you. So Mr. Bijarani was terrified.

MARJORIE

Yes. And he said, that he didn't know what Varone was talking about. And then...

(pause)

-> stalling3

== stalling3 ==

* [Say nothing]

    MARJORIE
    
    (...)
    
    BRIANNA
    
    Marjorie?
    
    MARJORIE
    
    (sigh)
    
    -> stalling3

* [I don't want to go on]

    MARJORIE
    
    I don't want to go on. Do I have to go on?
    
    BRIANNA
    
    You're doing great, Marjorie. Please, yes.
    
    -> stalling3

* [All of a sudden...]

-> continue3

== continue3 ==

MARJORIE

All of a sudden... he drew a gun and... pointed at him, and I quickly hid behind a shelf.

BRIANNA

How far was this shelf away from the counter?

MARJORIE

I don't know. It was the second row in the back where the fridges were. I guess... I guess maybe 30 feet or something.

BRIANNA

Okay, go on.

MARJORIE

So I hid and Varone kept on shouting and then... (pauses)

BRIANNA

Should we take a break?

* [Yes]

BRIANNA

Okay. Relax. Breathe.

MARJORIE

(breathes in)

(breathes out)

(drinks)

BRIANNA

Do you think, you can go on?

MARJORIE

I... Yes, I think so.

BRIANNA

So what happened then?

* [No]

MARJORIE

No, it's... It's fine. Thank you.

BRIANNA

Okay.

-

MARJORIE

Then he shot. BAM BAM BAM. Three times. (sobbing) He shot Jazir three times. There was blood everywhere.

BRIANNA

What did you do then?

MARJORIE

(still sobbing) I was in shock. I still hid behind the shelf. I didn't (sob) scream, I... why didn't I scream? I lost track of time. Then I looked to the counter again, but Varone was gone. I went to (sob) I went to Jazir and... all this blood. (she cries)

(pause)

BRIANNA

Can you continue?

MARJORIE

(still sobbing, but getting herself together) Yes... yes, okay. (breath) Jazir wasn't breathing anymore, so I took the phone and called 911.

BRIANNA

And then?

* [What do you mean?]

MARJORIE

What do you mean?

BRIANNA

You have to tell things exactly and completely as they were. If you leave things out, the defense will rip you open on those.

MARJORIE

Okay I... I freaked out. It was all too much, you know?

* [Nothing!]

MARJORIE

Nothing! He was dead!

BRIANNA

Remember to recount things exactly and completely as they were. If you leave things out, the defense will rip you open on those.

MARJORIE

(angry) Fine. I freaked out. It was all too much, you know?

* [I freaked out.]

MARJORIE

I freaked out. It was all too much, you know?

-

BRIANNA

Yes, I understand. What did you do?

MARJORIE

I just ran. I ran home and locked my doors. I expected to get shot any second. I only opened when the police knocked at my door when they had started questioning the neighborhood.

BRIANNA

Okay. I think, they will ask you why you didn't stay and help Jazi

MARJORIE

(interrupts shouting) He was fucking dead!

BRIANNA

(Trying to calm her down) Yes, I know. I can understand that. Please calm down.

MARJORIE

(still shouting) I saw him die!

(pause)

Fuck!

(pause)

They will ask something like that?

BRIANNA

Look, you're the witness. That makes you the defense's enemy. If they can't prove that you're lying, they have to render you unreliable.

MARJORIE

Okay.

BRIANNA

The best thing is to stay calm, and I know how hard that is. Stay calm and answer their questions truthfully.

MARJORIE

Okay. I'll try.

BRIANNA

I know. Thank you so much for helping us!

MARJORIE

Okay.

-> END