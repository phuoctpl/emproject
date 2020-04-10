package com.fudn.em.model.bo;

import java.text.Normalizer;
import java.util.List;
import java.util.regex.Pattern;

import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.TopUser;
import com.fudn.em.model.dao.PostListDAO;

public class PostListBO {
	
	private PostListDAO postListDAO = new PostListDAO();

	public List<Post> getPopularAudio(int index) throws Exception{
		return postListDAO.getPopularAudio(index);
	}
	
	public List<Post> getPopularVideo(int index) throws Exception{
		return postListDAO.getPopularVideo(index);
	}
	
	public List<Post> getNewPost(int index) throws Exception{
		return postListDAO.getNewPost(index);
	}
	
	public List<Playlist> getPopularAudioAlbum(int index) throws Exception {
		return postListDAO.getPopularAudioAlbum(index);
	}
	
	public List<Playlist> getPopularVideoAlbum(int index) throws Exception {
		return postListDAO.getPopularVideoAlbum(index);
	}
	
	public List<Playlist> getNewAlbum(int index) throws Exception {
		return postListDAO.getNewAlbum(index);
	}
	
	public List<TopUser> getUserList(int index) throws Exception {
		return postListDAO.getUserList(index);
	}
	
	private String convert(String key) {
		
		String temp = Normalizer.normalize(key.toLowerCase(), Normalizer.Form.NFD);
		
		Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
		
		String searching = pattern.matcher(temp).replaceAll("").replaceAll("đ", "d")
				.replaceAll("a", "[aáàạảãâấầậẩẫăắằặẳẵ]")
				.replaceAll("d", "[dđ]")
				.replaceAll("e", "[eéẹèẻẽêếềệểễ]")
				.replaceAll("o", "[oóòọỏõôốồộổỗơớờợởỡ]")
				.replaceAll("u", "[ưứừựửữuúùụủũ]")
				.replaceAll("i", "[iíìịỉĩ]")
				.replaceAll("y", "[yýỳỵỷỹ]");
		
		return searching;
	}
	
	public List<Post> getResultPostTitle(String key) {
		String searching = convert(key);
		return postListDAO.getResultPostTitle(searching);
	}
	
	public List<Post> getResultPostGenre(String key) {
		String searching = convert(key);
		return postListDAO.getResultPostGenre(searching);
	}
	
	public List<Playlist> getResultAlbumTitle(String key) {
		String searching = convert(key);
		return postListDAO.getResultAlbumTitle(searching);
	}
	
	public List<Playlist> getResultAlbumGenre(String key) {
		String searching = convert(key);
		return postListDAO.getResultAlbumGenre(searching);
	}
	
	public List<Member> getResultMember(String key) {
		String searching = convert(key);
		return postListDAO.getResultMember(searching);
	}
	
}
