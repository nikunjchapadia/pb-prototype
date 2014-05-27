.class public Lcom/lilkillaware/fbapptemplate/model/FeedItem;
.super Ljava/lang/Object;
.source "FeedItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FB_PHOTO_FIELDS:Ljava/lang/String; = "source"

.field protected static final TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x30468b3f209e1428L


# instance fields
.field public _comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

.field public _commentsListViewItemsHeight:I

.field public _commentsString:Ljava/lang/String;

.field public _commentsVisibility:I

.field public _description:Ljava/lang/String;

.field public _fromId:Ljava/lang/String;

.field public _fromName:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _itemLink:Ljava/lang/String;

.field public _likesNo:Ljava/lang/String;

.field public _message:Ljava/lang/String;

.field public _name:Ljava/lang/String;

.field public _objectId:Ljava/lang/String;

.field public _picture:Ljava/lang/String;

.field public _profileImage:Ljava/lang/String;

.field public _profileLink:Ljava/lang/String;

.field public _profileName:Ljava/lang/String;

.field public _source:Ljava/lang/String;

.field public _type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsVisibility:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsListViewItemsHeight:I

    return-void
.end method

.method private populatFrom(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 205
    const-string v1, "from"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "from"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 208
    .local v0, jFrom:Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_fromId:Ljava/lang/String;

    .line 211
    :cond_0
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_fromName:Ljava/lang/String;

    .line 214
    .end local v0           #jFrom:Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method private populateComments(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v4, "comments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const-string v4, "comments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const-string v4, "comments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 175
    .local v0, commentArray:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 176
    .local v2, length:I
    new-array v4, v2, [Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    iput-object v4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    .line 177
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 178
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 179
    .local v1, jComment:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    new-instance v5, Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    invoke-direct {v5}, Lcom/lilkillaware/fbapptemplate/model/FeedComment;-><init>()V

    aput-object v5, v4, v3

    .line 180
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    aget-object v4, v4, v3

    const-string v5, "message"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_message:Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    aget-object v4, v4, v3

    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_id:Ljava/lang/String;

    .line 182
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    aget-object v4, v4, v3

    const-string v5, "from"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_from_name:Ljava/lang/String;

    .line 183
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    aget-object v4, v4, v3

    const-string v5, "from"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_from_id:Ljava/lang/String;

    .line 184
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    aget-object v4, v4, v3

    const-string v5, "from"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "picture"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_from_photo:Ljava/lang/String;

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v0           #commentArray:Lorg/json/JSONArray;
    .end local v1           #jComment:Lorg/json/JSONObject;
    .end local v2           #length:I
    .end local v3           #x:I
    :cond_0
    return-void
.end method

.method private populateLikes(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, likesNo:I
    const-string v2, "likes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string v2, "likes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    .local v0, jLikes:Lorg/json/JSONObject;
    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "total_count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    .end local v0           #jLikes:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_likesNo:Ljava/lang/String;

    .line 202
    return-void

    .line 196
    .restart local v0       #jLikes:Lorg/json/JSONObject;
    :cond_1
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getCommentsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 59
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 62
    .local v0, comment:Lcom/lilkillaware/fbapptemplate/model/FeedComment;
    const-string v5, "<b>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_from_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":</b>&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br />"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0           #comment:Lcom/lilkillaware/fbapptemplate/model/FeedComment;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public getCommentsStringForWebVew()Ljava/lang/String;
    .locals 7

    .prologue
    .line 72
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_comments:[Lcom/lilkillaware/fbapptemplate/model/FeedComment;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 75
    .local v0, comment:Lcom/lilkillaware/fbapptemplate/model/FeedComment;
    const-string v5, "<div style=\"background-color:#EDEFF4\">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<img src=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_from_photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" align=\"left\" height=\"32\" width=\"32\">&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v5, "<b>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_from_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":</b>&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/lilkillaware/fbapptemplate/model/FeedComment;->_message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br />"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v5, "</div>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0           #comment:Lcom/lilkillaware/fbapptemplate/model/FeedComment;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public getFeedDescriptionForLink()Landroid/text/Spanned;
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 114
    :goto_0
    return-object v1

    .line 112
    :cond_0
    const-string v0, "<a href=\"%s\">%s</a><br /><span>%s</span>"

    .line 113
    .local v0, html:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_description:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method public getFeedDescriptionVisibility()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getFeedImage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_source:Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_picture:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPictureFromNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileImage:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_picture:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayIconVisibility()I
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getRequest(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 4
    .parameter "activeSession"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 247
    :goto_0
    return-object v1

    .line 220
    :cond_0
    new-instance v1, Lcom/facebook/Request;

    invoke-direct {v1}, Lcom/facebook/Request;-><init>()V

    .line 221
    .local v1, req:Lcom/facebook/Request;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/Request;->setGraphPath(Ljava/lang/String;)V

    .line 223
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {v1, p1}, Lcom/facebook/Request;->setSession(Lcom/facebook/Session;)V

    .line 226
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, params:Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "source"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v0}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 229
    new-instance v2, Lcom/lilkillaware/fbapptemplate/model/FeedItem$1;

    invoke-direct {v2, p0}, Lcom/lilkillaware/fbapptemplate/model/FeedItem$1;-><init>(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v1, v2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 246
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_0
.end method

.method public getShortMessage()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 87
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    .line 90
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Read more!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isTitleClickable()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public populate(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter "profileName"
    .parameter "profileLink"
    .parameter "jsonObject"
    .parameter "profileImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    .line 136
    const-string v0, "type"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "type"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    .line 139
    :cond_0
    const-string v0, "object_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "object_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_objectId:Ljava/lang/String;

    .line 142
    :cond_1
    const-string v0, "picture"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "picture"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_picture:Ljava/lang/String;

    .line 145
    :cond_2
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_name:Ljava/lang/String;

    .line 148
    :cond_3
    const-string v0, "message"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    const-string v0, "message"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    .line 151
    :cond_4
    const-string v0, "description"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    const-string v0, "description"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_description:Ljava/lang/String;

    .line 154
    :cond_5
    const-string v0, "link"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    const-string v0, "link"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    .line 157
    :cond_6
    const-string v0, "source"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    const-string v0, "source"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_source:Ljava/lang/String;

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_source:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 161
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_picture:Ljava/lang/String;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_source:Ljava/lang/String;

    .line 163
    :cond_8
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileName:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileLink:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileImage:Ljava/lang/String;

    .line 166
    invoke-direct {p0, p3}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->populateLikes(Lorg/json/JSONObject;)V

    .line 167
    invoke-direct {p0, p3}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->populateComments(Lorg/json/JSONObject;)V

    .line 168
    invoke-direct {p0, p3}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->populatFrom(Lorg/json/JSONObject;)V

    .line 169
    return-void
.end method
