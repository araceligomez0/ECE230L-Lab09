# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Araceli Gomez Chavez & Gabriel Kendall 

## Summary
This lab focused on showing the difference between sequential logic and combinational logic. Combinational logic is defined as when outputs are changes based on the various inputs. Sequntial logic on the other had focuses on storing different values and using them when necessary. Sequential logic is a way to see how real systems work in the real work. In this lab, we also learned and focused on two different latches, the SR-latch and the D-latch. The SR-latch can be problematic and struggle to function because it becomes invalid when both of the inputs are one. The D-latch is used to fix this problem because it uses an enable signal. The main focus of this lab was to show memory works in digital circuits. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
The reason that structural verilog can not be used to implement latches is because it is too low-level and makes the design unnecessarily complex and error-prone. There are also certain synthesis tools may not be regognize a structrually described latch and could then optimize incorrectly. In the end, using Verilog is the best option because it can accurately express the intended latch behavior and uses the proper synthesis. 

### What is the meaning of always @(*) in a sensitivity block?
The meaning of always @(*) in a sensitivity block is that it will automatically run whenever any signal used inside the block changes. This is mainly used in combinationa logic because it ensures that the output upades immediately when an input changes. 

### What importance is memory to digital circuits?
The importance of memory in digital circuits is that it allows these circuits to store and retain information over time. This allows the circuits to depend and use past inputs rather than only the current ones. If memory did not exist, circuits would be purely combinational and coult not perform tasks such as counting and sequencing. 
