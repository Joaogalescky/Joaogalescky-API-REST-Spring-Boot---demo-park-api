package com.jgalescky.demoparkapi.service;

import com.jgalescky.demoparkapi.entity.Vaga;
import com.jgalescky.demoparkapi.exception.CodigoUniqueViolationException;
import com.jgalescky.demoparkapi.exception.EntityNotFoundException;
import com.jgalescky.demoparkapi.exception.VagaDisponivelException;
import com.jgalescky.demoparkapi.repository.VagaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static com.jgalescky.demoparkapi.entity.Vaga.StatusVaga.LIVRE;

@RequiredArgsConstructor
@Service
public class VagaService {
    private final VagaRepository vagaRepository;

    @Transactional
    public Vaga salvar(Vaga vaga) {
        try {
            return vagaRepository.save(vaga);
        } catch (DataIntegrityViolationException ex) {
            throw new CodigoUniqueViolationException("Vaga", vaga.getCodigo());
        }
    }

    @Transactional(readOnly = true)
    public Vaga buscarPorCodigo(String codigo) {
        return vagaRepository.findByCodigo(codigo).orElseThrow(() -> new EntityNotFoundException("Vaga", codigo));
    }

    @Transactional(readOnly = true)
    public Vaga buscarPorVagaLivre() {
        return vagaRepository.findFirstByStatus(LIVRE).orElseThrow(() -> new VagaDisponivelException());
    }
}