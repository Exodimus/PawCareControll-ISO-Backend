package sv.edu.udbvirtual.pawcarecontrollisobackend.Repositorio;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.UsuarioModel;
//import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.CitasModel;
//import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.TipoUsuarioModel;

import java.util.ArrayList;
import java.util.Optional;

public interface UsuarioRepositorio extends CrudRepository<UsuarioModel, Long> {




    /**Encontrar Doctores Activos**/
    @Query("SELECT u FROM UsuarioModel u WHERE u.tipoUsuario.id = :tipoUsuarioId AND u.Estatus = 1")
    ArrayList<UsuarioModel> find_Doctores(Long tipoUsuarioId);

    /**Verificar Login**/
    @Query("SELECT u FROM UsuarioModel u WHERE u.Correo = :correo and u.Pass = :contra AND u.Estatus = 1")
    Optional<UsuarioModel> findByUsuarioByCorreo(String correo,String contra);

    //Verificar correo
    @Query("SELECT u FROM UsuarioModel u WHERE u.Correo = :correo AND u.Estatus = 1")
    Optional<UsuarioModel> findByCorreo(String correo);
}
