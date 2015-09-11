package com.nautestech.security;

import java.util.Collection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.nautestech.security.model.User;
import com.nautestech.security.service.UserService;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {
    private static final Logger logger = LoggerFactory.getLogger(CustomAuthenticationProvider.class);

    @Autowired
    UserService userService;
/*	��й�ȣ ��ȣȭ
    @Autowired
    private PasswordEncoder passwordEncoder;
*/
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = (String) authentication.getPrincipal();
        String password = (String) authentication.getCredentials();

        User user;
        Collection<? extends GrantedAuthority> authorities;

        try {
			user = userService.loadUserByUsername(username);
			logger.info("{}",user.toString());
			
/*			��й�ȣ ��ȣȭ
            String hashedPassword = passwordEncoder.encode(password);

            logger.info("username : " + username + " / password : " + password + " / hash password : " + hashedPassword);
            logger.info("username : " + user.getUsername() + " / password : " + user.getPassword());

            if (!passwordEncoder.matches(password, user.getPassword())) throw new BadCredentialsException("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
*/
			if(!password.equals(user.getPassword())) throw new BadCredentialsException("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");

            authorities = user.getAuthorities();
        } catch(UsernameNotFoundException e) {
            logger.info("UsernameNotFoundException="+e.toString());
            throw new UsernameNotFoundException(e.getMessage());
        } catch(BadCredentialsException e) {
            logger.info("BadCredentialsException="+e.toString());
            throw new BadCredentialsException(e.getMessage());
        } catch(Exception e) {
            logger.info("Exception="+e.toString());
            throw new BadCredentialsException("��ġ�ϴ� ���������� �����ϴ�.");
            //throw new RuntimeException(e.getMessage());
        }

        return new UsernamePasswordAuthenticationToken(user, password, authorities);
    }

    @Override
    public boolean supports(Class<?> authenticate) {
        return authenticate.equals(UsernamePasswordAuthenticationToken.class);
    }
}
