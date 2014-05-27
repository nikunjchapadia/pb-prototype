.class public interface abstract Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;
.super Ljava/lang/Object;
.source "FBFeedGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFeedGet(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lilkillaware/fbapptemplate/model/FeedItem;",
            ">;)V"
        }
    .end annotation
.end method
