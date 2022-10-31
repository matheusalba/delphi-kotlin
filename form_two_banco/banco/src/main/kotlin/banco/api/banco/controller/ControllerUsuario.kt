package banco.api.banco.controller

import banco.api.banco.model.Usuario
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/usuario")
class ControllerUsuario {

    @GetMapping
    fun getUsuario():String{
        return "ok get"
    }

    @PostMapping
    fun postUsuario(@RequestBody usuario: Usuario){
        println("ok post")
    }

  /*  @RequestMapping(value = ["/user"], method = arrayOf(RequestMethod.POST))
    fun postUsuario():String{
        return "ok post"
    }
    */




}
