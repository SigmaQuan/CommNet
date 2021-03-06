% Copyright (c) 2016-present, Facebook, Inc.
% All rights reserved.
%
% This source code is licensed under the BSD-style license found in the
% LICENSE file in the root directory of this source tree. An additional grant 
% of patent rights can be found in the PATENTS file in the same directory.

classdef Tanh < nn.Module
    properties
    end
    methods
        function obj = Tanh()
            obj = obj@nn.Module();
        end
        function output = fprop(obj, input)
            obj.output = tanh(input);
            output = obj.output;
        end
        function grad_input = bprop(obj, input, grad_output)
            grad_input = grad_output .* (1 - obj.output.^2);
        end
    end
end