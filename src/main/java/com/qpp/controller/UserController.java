/******************************************************************************
 * Copyright (C) 2016 All Rights Reserved.
 ********************************************/
package com.qpp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {

    @RequestMapping("register")
    public String registerUI() {
        return "/user/register";
    }
}
