package sv.edu.udbvirtual.pawcarecontrollisobackend.Servicios;

import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.UsuarioModel;

import java.util.ArrayList;
import java.util.Optional;

public interface UsuarioServicio {
    ArrayList<UsuarioModel> getAllUsuarios();
    ArrayList<UsuarioModel> getDoctoresById(Long tipoUsuarioId);
    Optional<UsuarioModel> getUsuarioByCorreo(String correo,String Contra);
    Optional<UsuarioModel> getByCorreo(String correo);
    Optional<UsuarioModel> getUsuarioById(Long id);
    UsuarioModel guardarUsuario(UsuarioModel usuario);
    UsuarioModel actualizarUsuario(Long id, UsuarioModel usuario);
    boolean desactivarUsuario(Long id);
}
