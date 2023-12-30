package exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;

import java.util.Date;

@ControllerAdvice
public class GlobalExceptionHandler {

//    // 處理特定類型的異常
//    @ExceptionHandler(YourSpecificException.class)
//    public ResponseEntity<?> handleYourSpecificException(YourSpecificException ex, WebRequest request) {
//        ErrorDetails errorDetails = new ErrorDetails(new Date(), ex.getMessage(), request.getDescription(false));
//        return new ResponseEntity<>(errorDetails, HttpStatus.SPECIFIC_HTTP_STATUS);
//    }

    // 處理 SQL 語法錯誤異常
    @ExceptionHandler(java.sql.SQLSyntaxErrorException.class)
    public ResponseEntity<?> handleSQLSyntaxErrorException(java.sql.SQLSyntaxErrorException ex, WebRequest request) {
        ErrorDetails errorDetails = new ErrorDetails(new Date(), "SQL 語法錯誤：" + ex.getMessage(), request.getDescription(false));
        return new ResponseEntity<>(errorDetails, HttpStatus.BAD_REQUEST);
    }

    // 處理所有其他異常
    @ExceptionHandler(Exception.class)
    public ResponseEntity<?> handleGlobalException(Exception ex, WebRequest request) {
        ErrorDetails errorDetails = new ErrorDetails(new Date(), ex.getMessage(), request.getDescription(false));
        return new ResponseEntity<>(errorDetails, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
