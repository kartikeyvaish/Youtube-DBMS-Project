DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
	comment_id bigserial NOT NULL PRIMARY KEY,
	commented_by_user_id bigserial NOT NULL,
	commented_on_video_id bigserial NOT NULL,
	comment_text text NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_commented_by_user_id
		FOREIGN KEY(commented_by_user_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_commented_on_video_id
		FOREIGN KEY(commented_on_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE
);

INSERT INTO comments (commented_by_user_id, commented_on_video_id, comment_text)
	(SELECT 
		(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
		(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
		'This is a comment' as comment_text)
	UNION 
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacinia nisi venenatis tristique fusce congue diam id ornare' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'molestie sed justo pellentesque viverra pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel enim sit amet nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nibh ligula nec sem duis aliquam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sagittis dui vel nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'a libero nam dui proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fringilla rhoncus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et ultrices posuere cubilia curae nulla dapibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien varius ut blandit non interdum in ante vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget congue eget semper rutrum nulla nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sagittis sapien cum sociis natoque penatibus et magnis dis parturient' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'magna bibendum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rutrum at lorem integer tincidunt ante vel ipsum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi non quam nec dui luctus rutrum nulla tellus in sagittis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dis parturient' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo pellentesque ultrices mattis odio donec vitae nisi nam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consectetuer adipiscing elit proin interdum mauris non ligula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris enim leo rhoncus sed vestibulum sit amet cursus id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices phasellus id sapien in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris eget massa tempor convallis nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio porttitor id consequat in consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis nunc proin at turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'maecenas ut massa' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'felis fusce posuere felis sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'praesent id massa id nisl venenatis lacinia aenean' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat lectus in est' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat id mauris vulputate elementum nullam varius nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'accumsan tellus nisi eu orci mauris lacinia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisi venenatis tristique fusce' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac enim in tempor turpis nec euismod scelerisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla nisl nunc nisl duis bibendum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat morbi a ipsum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'felis donec semper' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vulputate vitae nisl aenean lectus pellentesque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'iaculis diam erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dapibus dolor vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula suspendisse ornare' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'platea dictumst morbi vestibulum velit id pretium iaculis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim blandit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curae duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in hac habitasse' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat id mauris vulputate elementum nullam varius' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vehicula consequat morbi a ipsum integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vivamus tortor duis mattis egestas metus aenean' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cras pellentesque volutpat dui maecenas tristique' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fusce congue diam id ornare imperdiet sapien urna pretium' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'feugiat et eros vestibulum ac est lacinia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nec nisi vulputate nonummy maecenas tincidunt lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'gravida nisi at nibh in hac habitasse platea' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'massa id nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aenean fermentum donec ut mauris eget massa tempor convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquam convallis nunc proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'congue etiam justo etiam pretium iaculis justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'habitasse platea dictumst etiam faucibus cursus urna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'maecenas leo odio condimentum id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus et' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'magna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis nunc proin at turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'placerat ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci pede venenatis non sodales sed tincidunt' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac enim in tempor turpis nec euismod' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nam congue risus semper porta volutpat quam pede lobortis ligula sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'metus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'varius nulla facilisi cras non velit nec nisi vulputate nonummy' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'porttitor lorem id ligula suspendisse ornare consequat lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero nam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'condimentum curabitur in libero ut massa volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'habitasse platea' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'diam in magna bibendum imperdiet nullam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eleifend pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor id nulla ultrices aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae consectetuer eget rutrum at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tristique in tempus sit amet sem fusce consequat nulla nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'risus dapibus augue vel accumsan tellus nisi eu orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'semper interdum mauris ullamcorper purus sit amet nulla quisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum quam sapien varius ut blandit non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim sit amet nunc viverra dapibus nulla suscipit ligula in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut nunc vestibulum ante ipsum primis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nunc donec quis orci eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat varius integer ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sodales scelerisque mauris sit amet eros' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suscipit nulla elit ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'natoque penatibus et magnis dis parturient montes nascetur ridiculus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'semper est' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac tellus semper interdum mauris ullamcorper' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'venenatis non sodales sed tincidunt eu felis fusce' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu interdum eu tincidunt in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio donec vitae nisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id massa id nisl venenatis lacinia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi quis tortor id nulla ultrices aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquam sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nec dui luctus rutrum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis integer aliquet massa id lobortis convallis tortor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam turpis adipiscing lorem vitae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim sit amet nunc viverra dapibus nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec vitae nisi nam ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede lobortis ligula sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cras mi pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci luctus et ultrices posuere cubilia curae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'felis sed lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'maecenas tincidunt lacus at velit vivamus vel nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rhoncus mauris enim leo rhoncus sed vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'bibendum morbi non quam nec dui luctus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis elementum ligula vehicula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'proin risus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elit ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ornare imperdiet sapien urna pretium nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquet ultrices erat tortor sollicitudin mi sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet nunc viverra dapibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'velit nec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien sapien non mi integer ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curabitur gravida nisi at nibh in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id nisl venenatis lacinia aenean sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim in tempor turpis nec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl venenatis lacinia aenean sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisi vulputate nonummy' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet turpis elementum ligula vehicula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curae donec pharetra magna vestibulum aliquet ultrices erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec dapibus duis at velit eu est congue elementum in hac habitasse platea' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nunc proin at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacinia erat vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mi pede malesuada in imperdiet et commodo vulputate justo in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac neque duis bibendum morbi non quam nec dui luctus rutrum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'faucibus cursus urna ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel nulla eget eros elementum pellentesque quisque porta' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'posuere cubilia curae donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'neque sapien placerat ante nulla justo aliquam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio porttitor id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis faucibus accumsan odio curabitur convallis duis consequat dui nec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed augue aliquam erat volutpat in congue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'blandit ultrices enim lorem ipsum dolor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac neque duis bibendum morbi non quam nec dui' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'metus aenean fermentum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'at velit eu est congue elementum in hac habitasse platea dictumst' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rutrum nulla nunc purus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula sit amet eleifend pede libero quis orci nullam molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede venenatis non sodales sed tincidunt eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi vel lectus in quam fringilla rhoncus mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo maecenas rhoncus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla elit ac nulla sed vel enim sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis bibendum morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elementum nullam varius' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante ipsum primis in faucibus orci luctus et ultrices posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula pellentesque ultrices phasellus id sapien in sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'bibendum morbi non quam nec dui luctus rutrum nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet eleifend pede libero quis orci nullam molestie nibh in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla quisque arcu libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'porttitor lorem id ligula suspendisse ornare consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'faucibus cursus urna ut tellus nulla ut erat id mauris' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices enim lorem ipsum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cursus id turpis integer aliquet massa id lobortis convallis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'fermentum justo nec condimentum neque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices posuere cubilia curae nulla dapibus dolor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut dolor morbi vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempus semper est quam pharetra magna ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquam non mauris morbi non lectus aliquam sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et ultrices posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat erat quisque erat eros' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est donec odio justo sollicitudin ut suscipit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim blandit mi in porttitor pede justo eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eros elementum pellentesque quisque porta volutpat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aenean sit amet justo morbi ut odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo maecenas pulvinar lobortis est phasellus sit amet erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'duis bibendum felis sed interdum venenatis turpis enim blandit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut massa quis augue luctus tincidunt nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dui nec nisi volutpat eleifend donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ipsum primis in faucibus orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'rhoncus aliquet pulvinar sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo pellentesque ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in faucibus orci' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum aliquet ultrices erat tortor sollicitudin' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in felis donec semper sapien a libero' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'habitasse platea dictumst morbi vestibulum velit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'non quam nec dui luctus rutrum nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'elit ac nulla sed vel enim sit amet nunc viverra' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'purus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nec molestie sed justo pellentesque viverra' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consequat varius integer ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'consectetuer adipiscing' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula suspendisse ornare consequat lectus in est risus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'felis ut' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pede libero quis orci nullam molestie' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat erat quisque' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'pharetra magna vestibulum' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'massa donec dapibus duis at velit eu est congue elementum in hac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ultrices enim lorem ipsum dolor sit amet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lobortis sapien sapien non' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'ligula suspendisse ornare consequat lectus in' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'est phasellus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla tellus in sagittis dui vel nisl duis' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac' as comment_text)
	UNION
	(SELECT 
			(SELECT user_id FROM users ORDER BY RANDOM() LIMIT 1) as commented_by_user_id,
			(SELECT video_id FROM videos ORDER BY RANDOM() LIMIT 1) as commented_on_video_id, 
			'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu' as comment_text);

SELECT * from comments;