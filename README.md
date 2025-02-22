# Simulador de Aviação Controlado por um Acelerómetro

Projeto desenvolvido no âmbito da unidade curricular de instrumentação avançada do mestrado em engenharia física da Universidade do Minho.

<p align="center">
  <img src="media/demo.gif" alt="animated" width=70% center/>
</p>

## Introduction

Today, the use of cyber-physical systems and society's interest in them has been increasing. Essentially, these systems are designed to interact with the physical world and perform specific tasks, such as system automation, which involves controlling and monitoring constantly changing physical variables. These physical variables, usually of analog nature, are detected by sensors and translated by them into electrical signals. These signals are later processed according to the desired application. Typically, microcontrollers are used to receive information from the sensors and then send it to processing units with greater processing capacity. It is important not to forget that these systems also include actuators, which means the reverse process, where it is the processing unit that, for some reason, sends instructions to the microcontroller to activate an actuator.

In this project, within the scope of the advanced instrumentation course of the Master's program in physical engineering at the University of Minho, a flight simulator controlled by an accelerometer was developed. To do this, it was necessary to program a microcontroller of the PIC18F47Q10 model. The designed application will control the motion of an aircraft in a simulation environment, so it is necessary to obtain values for the direction of the object's movement. For the sake of simulator usability, it was defined that the aircraft would move at a constant speed, and its movement direction should be parallel to that of the accelerometer. Therefore, information from the three axes of the accelerometer will be used to determine the direction of the aircraft's movement. The communication protocol used between the STIM (microcontroller) and the NCAP (processing unit with greater processing capacity), as will be explained later, was IEEE 1451.0.

## Introdução

Nos dias de hoje, a utilização de sistemas ciberfísicos e o interesse nestes por parte das sociedades tem aumentado. Na sua essência, estes sistemas são projetados para interagirem com o mundo físico e realizar tarefas específicas, como automação de sistemas, o que implica o controlo e monitorização de variáveis físicas em constante alteração. As variáveis físicas, usualmente de natureza analógica, são detetadas através de sensores e traduzidas, por estes, para sinais elétricos. Estes sinais serão posteriormente processados conforme a aplicação desejada. Normalmente, recorrem-se a microcontroladores para receberem a informação dos sensores e, posteriormente, enviarem para unidades de processamento com maior capacidade de processamento. É importante não esquecer que estes sistemas também englobam atuadores, ou seja, o processo inverso, em que é a unidade de processamento que, por algum motivo, envia indicações ao microcontrolador para ativar algum atuador.


Neste projeto, no âmbito da unidade curricular de instrumentação avançada do mestrado em engenharia física da Universidade do Minho, desenvolveu-se um simulador de aviação controlado por um acelerómetro. Para tal foi necessário programar um microcontrolador do modelo PIC18F47Q10. A aplicação projetada controlará o movimento de um avião em ambiente de simulação, sendo assim necessária a obtenção de valores para a direção do movimento do objeto. Por simplicidade de utilização do simulador, definiu-se que o avião movimentar-se-á a uma velocidade constante e que a direção do movimento deste deverá ser paralela à do acelerómetro. Com isto, utilizar-se-á a informação proveniente dos 3 eixos do acelerómetro para determinar a direção de movimento do avião. O protocolo de comunicação utilizado entre a STIM (microcontrolador) e a NCAP (unidade com maior capacidade de processamento), tal como será posteriormente explicado, foi o IEEE 1451.0.

## Notas adicionais

O relatório final pode ser encontrado [aqui](final_report.pdf).

## Autores

* [Gabriela Jordão](mgabijo@gmail.com)
* [Miguel Peixoto](miguelpeixoto457@gmail.com)


## Licença

Este projeto está licenciado sob a licença MIT - consulte o ficheiro [LICENSE](LICENSE) para mais detalhes.
