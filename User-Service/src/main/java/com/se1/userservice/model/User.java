package com.se1.userservice.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "users", uniqueConstraints = {
        @UniqueConstraint(columnNames = "email")
})
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String email;

    private String imageUrl;

    @JsonFormat(pattern="yyyy-MM-dd")
    private LocalDate birthday;

    @Column(nullable = false)
    private Boolean emailVerified = false;

    @JsonIgnore
    private String password;

    @Enumerated(EnumType.STRING)
    private UserRole role ;
    
    @Enumerated(EnumType.STRING)
    private AuthProvider provider;

    private String providerId;
    
    private Boolean validFlg;
    
    private Boolean delFlg;
    
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createAt;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private LocalDateTime updateAt;

}