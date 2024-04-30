package com.jgalescky.demoparkapi.service;

import com.jgalescky.demoparkapi.entity.Usuario;
import com.jgalescky.demoparkapi.exception.EntityNotFoundException;
import com.jgalescky.demoparkapi.exception.PasswordInvalidException;
import com.jgalescky.demoparkapi.exception.UsernameUniqueViolationException;
import com.jgalescky.demoparkapi.repository.UsuarioRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RequiredArgsConstructor
@Service
public class UsuarioService {

    private final UsuarioRepository usuarioRepository;

    @Transactional
    public Usuario salvar(Usuario usuario) {
        try {
            return usuarioRepository.save(usuario);
        } catch (org.springframework.dao.DataIntegrityViolationException ex) {
            throw new UsernameUniqueViolationException(String.format("Username (%s) já cadastrado", usuario.getUsername()));
        }
    }

    @Transactional(readOnly = true)
    public Usuario buscarPorId(Long id) {
        return usuarioRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(String.format("Usuário id=%s não encontrado", id))); //get(), orElseGet() ou RunTimeException
    }

    @Transactional
    public Usuario editarSenha(Long id, String senhaAtual, String novaSenha, String confirmarSenha) {
        if (!novaSenha.equals(confirmarSenha)) {
            throw new PasswordInvalidException("Nova senha não confere com a confirmação de senha.");
        }
        Usuario user = buscarPorId(id);
        if (!user.getPassword().equals(senhaAtual)) {
            throw new PasswordInvalidException("Sua senha não confere.");
        }
        user.setPassword(novaSenha);
        return user;
    }

    @Transactional(readOnly = true)
    public List<Usuario> buscarTodos() {
        return usuarioRepository.findAll();
    }
}
