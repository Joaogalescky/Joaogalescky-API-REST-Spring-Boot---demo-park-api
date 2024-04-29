package com.jgalescky.demoparkapi.web.controller;

import com.jgalescky.demoparkapi.entity.Usuario;
import com.jgalescky.demoparkapi.service.UsuarioService;
import com.jgalescky.demoparkapi.web.dto.UsuarioCreateDto;
import com.jgalescky.demoparkapi.web.dto.UsuarioResponseDto;
import com.jgalescky.demoparkapi.web.dto.mapper.UsuarioMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("api/v1/usuarios")
public class UsuarioController {

    private final UsuarioService usuarioService;

    @PostMapping
    public ResponseEntity<UsuarioResponseDto> create(@RequestBody UsuarioCreateDto createDto) {
        Usuario user = usuarioService.salvar(UsuarioMapper.toUsuario(createDto));
        return ResponseEntity.status(HttpStatus.CREATED).body(UsuarioMapper.toDto(user)); //ou ResponseEntity.status(201)
    }

    @GetMapping("/{id}")
    public ResponseEntity<Usuario> getById(@PathVariable Long id) {
        Usuario user = usuarioService.buscarPorId(id);
        return ResponseEntity.ok(user); //ou ok(T body) ou ok()
    }

    @PatchMapping("/{id}")
    public ResponseEntity<Usuario> updatePassword(@PathVariable Long id, @RequestBody Usuario usuario) {
        Usuario user = usuarioService.editarSenha(id, usuario.getPassword());
        return ResponseEntity.ok(user); //ou ok(T body) ou ok()
    }

    @GetMapping
    public ResponseEntity<List<Usuario>> getAll() {
        List<Usuario> users = usuarioService.buscarTodos();
        return ResponseEntity.ok(users); //ou ok(T body) ou ok()
    }
}