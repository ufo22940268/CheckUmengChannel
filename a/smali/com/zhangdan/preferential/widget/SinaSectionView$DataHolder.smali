.class public Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;
.super Ljava/lang/Object;
.source "SinaSectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/SinaSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataHolder"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public photo:Landroid/graphics/Bitmap;

.field public portrait:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/SinaSectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
