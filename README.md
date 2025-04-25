# mitw-comparator-bench
A comparator component bench for use pursuing the ideas put forth in The Mind in the Wheel series by slimemoldtimemold.com

This project contains a test bench with a comparator component. The comparator accepts a perception input value from the test bench slider. When that value passes the error threshold, an error output value is produced. The error output value grows linearly until the perception input value reaches the error peak at which point the error max value is delivered to the error output.  

The comparator interface includes:
- Perception input, perception value as provided by an external sensor.
- Error output, error value for delivery to the next component.

The comparator internal parameters are:
- Perception max, the maximum value accepted at the perception input. Values above this will be limited to this value.
- Perception min, the minimum value accepted at the perception input. Values below this will be limited to this value.
- Error threshold, the perception value at which an error starts being generated. Perception values below this threshold will always generate an error value of 0.
- Error peak, the perception value at which the error reaches its maximum value as defined by error max. Perception values beyond this peak will always produce the error max value.
- Error max, the maximum value that will be delivered to the error output. 
