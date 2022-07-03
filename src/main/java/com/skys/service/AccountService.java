package com.skys.service;

public interface AccountService {

    public boolean login(String username, String password);

    public boolean beforeRegisterCheck(String username);

    public boolean register(String username, String password);

    public String accountFindID(String username);
}
