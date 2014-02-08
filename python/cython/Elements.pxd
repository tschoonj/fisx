#import numpy as np
#cimport numpy as np
cimport cython

from libcpp.string cimport string as std_string
from libcpp.vector cimport vector as std_vector
from libcpp.map cimport map as std_map

#from Shell cimport *

cdef extern from "fisx_elements.h":
    cdef cppclass Elements:
        Elements(std_string) except +

        void setMassAttenuationCoefficients(std_string,\
                                            std_vector[double], \
                                            std_vector[double], \
                                            std_vector[double], \
                                            std_vector[double], \
                                            std_vector[double]) except +
                                                
        std_map[std_string, double] getMassAttenuationCoefficients(std_string, double) except +

        std_map[std_string, std_vector[double]] getMassAttenuationCoefficients(std_string) except +

        std_map[std_string, std_vector[double]]\
                            getMassAttenuationCoefficients(std_string, std_vector[double]) except +
        
        std_map[std_string, std_vector[double]] getMassAttenuationCoefficients(std_map[std_string, double],\
                                                                               double) except +

        std_map[std_string, std_vector[double]]\
                            getMassAttenuationCoefficients(std_map[std_string, double],\
                                                           std_vector[double]) except +
