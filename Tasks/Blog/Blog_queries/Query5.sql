SELECT group_concat(Posts.title) as PostsWithoutTags FROM Blog2.Posts Left Join Blog2.PostsTags On Posts.id = PostsTags.postId Where PostsTags.id is Null; 