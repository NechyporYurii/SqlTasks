SELECT Tags.name as TagName, Count(PostsTags.postId) as PostsQuantity FROM Blog2.PostsTags Inner Join Blog2.Tags On PostsTags.tagid = Tags.tagId Group by PostsTags.tagId;