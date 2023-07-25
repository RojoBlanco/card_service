package ru.croc.cards.api.handling;

import org.springframework.http.HttpStatus;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import ru.croc.cards.dto.ResponseMessage;
import ru.croc.cards.exceptions.BankAccountNotFoundException;

import java.util.HashMap;
import java.util.Map;

@RestControllerAdvice
public class CardsRestControllerAdvice {
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Map<String, String> handleValidationExceptions(MethodArgumentNotValidException ex) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach((error) -> {
            String fieldName = ((FieldError) error).getField();
            String errorMessage = error.getDefaultMessage();
            errors.put(fieldName, errorMessage);
        });

        return errors;
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(BankAccountNotFoundException.class)
    public ResponseMessage handleBankAccountNotFoundException(BankAccountNotFoundException exception) {
        return ResponseMessage.builder()
                .message(exception.getMessage())
                .build();
    }
}
