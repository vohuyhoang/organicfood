package organicfood.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.dto.ProductsDTO;

@Service
public interface HomeService {
 @Autowired
 List<ProductsDTO> GetDataProducts();
 
}
