.class public Lcom/zhangdan/app/popmenu/PopupMenuItem;
.super Ljava/lang/Object;
.source "PopupMenuItem.java"


# instance fields
.field private flag:I

.field private iconResId:I

.field private subDesc:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->flag:I

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->iconResId:I

    return v0
.end method

.method public getSubDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->subDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 36
    iput p1, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->flag:I

    .line 37
    return-void
.end method

.method public setIconResId(I)V
    .locals 0
    .parameter "iconResId"

    .prologue
    .line 18
    iput p1, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->iconResId:I

    .line 19
    return-void
.end method

.method public setSubDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "subDesc"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->subDesc:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zhangdan/app/popmenu/PopupMenuItem;->title:Ljava/lang/String;

    .line 25
    return-void
.end method
