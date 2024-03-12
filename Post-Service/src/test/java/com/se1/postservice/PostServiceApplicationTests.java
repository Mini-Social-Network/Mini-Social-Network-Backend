package com.se1.postservice;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.se1.postservice.domain.payload.GetPostResponseDto;
import com.se1.postservice.domain.payload.GetPostResponseDto.TopicTag;

@SpringBootTest
class PostServiceApplicationTests {

	@Autowired
	private ObjectMapper objectMapper;
	
	@Test
	void contextLoads() throws JsonProcessingException {
		GetPostResponseDto getPostResponseDto = new GetPostResponseDto();
		getPostResponseDto.setId(1);
		getPostResponseDto.setTitle("MU đã thắng, áp sát top 5 nhưng vẫn sẽ bất ổn đến cuối mùa");
		getPostResponseDto.setMetaTitle("mu da thang, ap sat top 5 nhung van se bat on den cuoi mua");
		getPostResponseDto.setSlug("mu-da-thang-ap-sat-top-5-nhung-van-se-bat-on-den-cuoi-mua");
		getPostResponseDto.setContext("MU có lợi thế sân nhà. Nhưng Everton cũng chẳng ngại vấn đề đó. Các vị khách ào lên tấn công ngay sau tiếng còi khai cuộc. Khung thành của MU liên tục chịu sức ép. Trong bối cảnh ấy, Garnacho lại vụt sáng. Hai pha đi bóng của anh buộc các hậu vệ của Everton phải phạm lỗi. Hai quả 11m do tiền vệ người Argentina kiếm về đều được Bruno Fernandes và Marcus Rashford lần lượt chuyển hóa thành bàn thắng ngay trong hiệp một.\r\n"
				+ "\r\n"
				+ "Chính nhờ sự tinh quái của Garnacho, MU tạo ra một thế trận dễ thở hơn. Họ chơi chủ động và tạo ra được một thế trận vững vàng khi áp lực mà Everton tạo ra ngày một lớn. Ở những tình huống mà các hậu vệ MU mắc lỗi, họ vẫn còn một Onana rất chắc chắn trong khung gỗ. Càng chơi bóng, Onana càng hoàn thiện mình hơn. Những sai lầm cá nhân dần được hạn chế, thay vào đó là những tình huống ra vào hợp lý cùng những phản xạ tốt. Nhờ vậy, khung thành của MU đã được bảo vệ tuyệt đối ở trận đấu này."
				+ "\r\n"
				+ "Thống kê cho thấy Onana cản phá thành công cả 6 cú sút trúng đích của Everton, trong đó có 4 tình huống cứu thua trong vùng cấm. SofaScore chấm thủ thành người Cameroon 8,3 điểm - chỉ kém Bruno Fernandes (8,5 điểm) trận này. \"Tôi thấy hài lòng với chiến thắng này. Điều này tạo đà tâm lý tốt cho toàn đội. Với MU lúc này, trận đấu nào cũng sẽ như một trận chung kết. Chúng tôi cần phải dũng cảm hơn, chơi tốt hơn vì những đối thủ sắp tới đều rất mạnh\", Onana nói sau trận.”.\r\n"
		);
		getPostResponseDto.setLikeCount(4365);
		getPostResponseDto.setDisLikeCount(94);
		getPostResponseDto.setCommentCount(139);
		getPostResponseDto.setShareCount(89);
		getPostResponseDto.setHashTag(null);
		getPostResponseDto.setImageList(List.of("https://daklak.gov.vn/documents/10181/2614218/t1.jpg"));
		
		GetPostResponseDto.TopicTag topicTag = new GetPostResponseDto().new TopicTag();
		topicTag.setId(1);
		topicTag.setName("Mạng xã hội");
		getPostResponseDto.setTopicTag(topicTag);
		
		GetPostResponseDto.User userPost = new GetPostResponseDto().new User();
		userPost.setId(1);
		userPost.setName("Erik ten hag");
		userPost.setEmail("eriktenhag@gmail.com");
		userPost.setImageUrl("https://i.pinimg.com/736x/30/b5/49/30b54999b098050158ed13a1ecdcaab0.jpg");
		userPost.setIsExpert(true);
		userPost.setRatingCount(4.3);
		userPost.setTopicId(UUID.randomUUID().toString());
		getPostResponseDto.setUser(userPost);
		getPostResponseDto.setPublishAt(new Date());
		
		String jsonResponse = objectMapper.writeValueAsString(getPostResponseDto);
	}

	@Test
	public void test1() {
		PriorityQueue<GetPostResponseDto> priorityQueue = new PriorityQueue<>();
	}

}
