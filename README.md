# System Verilog Layered testbench
This repository contains a layered testbench environment implemented in SystemVerilog for both combinational and sequential circuits. The testbench is designed to verify the correctness of various digital circuits such as half adders, full adders, and flip-flops.

### The test bench architecture

![Screenshot (53)](https://github.com/user-attachments/assets/2a0dbce5-15c2-4b52-8de4-a20c06ba87a6)
#### The above figure shows us the System Verilog Layered testbench environment

In this setup, the top module testbench consists of three important blocks:
* Test block – contains the test environment.
* DUT (Design Under Test) – which is the RTL.
* Interface block – used to connect the test block with the DUT.

Inside the test block, there is an environment block that encapsulates the generator block, transactor(packet class) block, driver block, monitor block and the scoreboard.

### Basic Working of the Testbench

* The testbench is required to generate the stimulus and apply it to the DUT.
* Inside the testbench, the generator produces the test vectors.
* The driver is responsible for driving these test vectors to the DUT.
  (an environment block consists of generator block, transactor block, driver block, monitor block and the scoreboard)
* So environment and DUT are connected through the interface.
* The DUT processes the test vectors and generates the output.
* The output is passed to the monitor, with communication occurring via the interface.
* The monitor transfers the output to the scoreboard. The scoreboard acts as a comparator, comparing the expected (ideal) output with the actual generated output.
* If the output matches, the scoreboard confirms that the test has passed. otherwise, it indicates a failure.

### The Test Environment:

![Screenshot (54)](https://github.com/user-attachments/assets/e334b1ea-6908-4e74-aaff-6cec617d22ad)

#### The above diagram provides a detailed view of the test environment.

### Packet 
* It is a class data type.
* Packet class is also known as transaction class.
* We declare all the input and output signals available in the design in packet class.
* ##### the input will be declared as rand (so all the inputs are generated randomly).

### Generator
* generatoris a class data type. 
* The generator will randomise the input signals. 
* The generator will create a handle for the packet.
* The randomised inputs are put into the mailbox using the put method. 
* ##### A mailbox is required to facilitate communication between two classes without any data loss.

### Driver
* Driver is class data type
* the driver drives the stimulus into DUT through interface.

### interface 
* interface is the bunch of signals that connect testbench to RTL(DUT).
* DUT is connected to test environment through interface.

### monitor
* the DUT receives the stimulus and generates the outputs.
* inputs are sampled in monitor1
* only the outputs are sampled/collected in the monitor2
* smaller design can have only one monitor
  
### Reference model
* RM is similar to DUT(Design team) but created by the verification team
* it is an unoptimised model (ideal model)
* Sometimes RM will be written inside the monitor

### Scoreboard
* It is a comparator used to compare the outputs from RM (ideal outputs) and DUT (optimed/practical outputs)
* if the ideal output and DUT output matches, scoreboard generates 'test passed' otherwise 'test failed'

### virtual interface
* used to communicate between static and dynamic blocks
* class data types are dynamic in nature
* interface and DUT are in static in nature
* so to communicate between them, we use virtual interface

</details><details>
  <summary>D Flipflop</summary>

  Truth table of D flipfop

  ![Screenshot (55)](https://github.com/user-attachments/assets/c3e0ac6b-6fd2-4666-8ef8-7a83a4652ba8)

  ##### output when clk = 1; reset = 0; d= 1
  
  ![Screenshot (4)](https://github.com/user-attachments/assets/811c0c55-d740-4583-970b-fa8ed31bc97c)

   ##### output when clk = 0; reset = 1; d= 1
   
  ![Screenshot (5)](https://github.com/user-attachments/assets/489c8904-b3f3-428a-aee6-975414f2333e)

</details><details>
  <summary>half adder</summary>
  
  ##### truth table of half adder

  ![Screenshot (56)](https://github.com/user-attachments/assets/b0f6a187-ea75-4cb9-808e-80db6c292640)

##### output when a=0 and b=1    
  ![Screenshot (49)](https://github.com/user-attachments/assets/c5f43805-bac6-4056-bc67-3bca7b2bd033)

