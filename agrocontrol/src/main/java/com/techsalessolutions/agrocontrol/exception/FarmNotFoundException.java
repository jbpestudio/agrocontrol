package com.techsalessolutions.agrocontrol.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class FarmNotFoundException extends RuntimeException{
    public FarmNotFoundException(String message){
        super(message);
    }
}
