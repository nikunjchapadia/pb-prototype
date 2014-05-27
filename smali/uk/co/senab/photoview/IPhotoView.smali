.class public interface abstract Luk/co/senab/photoview/IPhotoView;
.super Ljava/lang/Object;
.source "IPhotoView.java"


# virtual methods
.method public abstract canZoom()Z
.end method

.method public abstract getDisplayRect()Landroid/graphics/RectF;
.end method

.method public abstract getMaxScale()F
.end method

.method public abstract getMidScale()F
.end method

.method public abstract getMinScale()F
.end method

.method public abstract getScale()F
.end method

.method public abstract getScaleType()Landroid/widget/ImageView$ScaleType;
.end method

.method public abstract setAllowParentInterceptOnEdge(Z)V
.end method

.method public abstract setMaxScale(F)V
.end method

.method public abstract setMidScale(F)V
.end method

.method public abstract setMinScale(F)V
.end method

.method public abstract setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end method

.method public abstract setOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
.end method

.method public abstract setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
.end method

.method public abstract setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
.end method

.method public abstract setScaleType(Landroid/widget/ImageView$ScaleType;)V
.end method

.method public abstract setZoomable(Z)V
.end method

.method public abstract zoomTo(FFF)V
.end method
