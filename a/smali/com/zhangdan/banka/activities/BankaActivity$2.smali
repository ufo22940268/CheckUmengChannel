.class Lcom/zhangdan/banka/activities/BankaActivity$2;
.super Ljava/lang/Object;
.source "BankaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/banka/activities/BankaActivity;->showGetPhotoDiaog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/banka/activities/BankaActivity;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/zhangdan/banka/activities/BankaActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    iput p2, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->val$width:I

    iput p3, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    iget-object v0, v0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    new-instance v1, Lcom/zhangdan/banka/img/PhotoSelectHandler;

    iget-object v2, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    iget v3, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->val$width:I

    iget v4, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->val$height:I

    invoke-direct {v1, v2, v3, v4}, Lcom/zhangdan/banka/img/PhotoSelectHandler;-><init>(Landroid/app/Activity;II)V

    iput-object v1, v0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    .line 166
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    iget-object v0, v0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    iget-object v1, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/banka/img/PhotoSelectHandler;->setOnImageSelectedListener(Lcom/zhangdan/banka/img/AbstractPhotoSelectHandler$OnImageSelectedListener;)V

    .line 168
    :cond_0
    if-nez p2, :cond_2

    .line 169
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    iget-object v0, v0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    invoke-virtual {v0}, Lcom/zhangdan/banka/img/PhotoSelectHandler;->takePhoto()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity$2;->this$0:Lcom/zhangdan/banka/activities/BankaActivity;

    iget-object v0, v0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    invoke-virtual {v0}, Lcom/zhangdan/banka/img/PhotoSelectHandler;->pickPhotoFromGallery()V

    goto :goto_0
.end method
