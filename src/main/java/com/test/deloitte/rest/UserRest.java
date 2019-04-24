package com.test.deloitte.rest;

import com.test.deloitte.dto.UserDto;
import com.test.deloitte.dto.UserShowDto;
import com.test.deloitte.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/users")
public class UserRest {

    private final UserService userService;

    @PostMapping("/sign-up")
    public void signUp(@RequestBody UserDto user) {
        userService.addUser(user);
    }

    @GetMapping
    public List<UserShowDto> getUsers() {
        return userService.getAllUsers();
    }

    @PostMapping
    public void addUser(@RequestBody UserDto userDto) {
        userService.addUser(userDto);
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
    }
}
