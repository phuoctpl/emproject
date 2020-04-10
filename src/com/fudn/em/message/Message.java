package com.fudn.em.message;

public interface Message {
	public final static int NEW_MEMBER_JOIN = 1;
	public final static int NEW_CHAT_MESSAGE = 2;
	public final static int REQUEST_FRIEND_LIST = 3;
	public final static int TURN_OFF_CHAT = 4;
	public final static int READ_OLD_MESSAGE = 5;
	public final static int MARK_READ = 6;
	public final static int REFRESH_NOTIFICATION = 7;
	public final static byte MESSAGE_OLD = 0;
	public final static byte MESSAGE_NEW = 1;
	public static final int SHARE_AUDIO = 8;
	public final static int TAKE_VIDEO_CALL = 9;
	public static final int CHANGE_KARAOKE_SONG = 10;
	public static final int PLAY_KARAOKE_SONG = 11;
	public static final int PAUSE_KARAOKE_SONG = 12;
}
