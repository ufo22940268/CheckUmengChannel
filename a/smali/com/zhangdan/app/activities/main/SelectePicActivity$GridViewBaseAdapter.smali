.class Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectePicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/SelectePicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridViewBaseAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/main/SelectePicActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 165
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 166
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSmallArray:[I
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$000(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSmallArray:[I
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$000(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x7f02025c

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, holder:Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300fd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 188
    new-instance v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;

    .end local v0           #holder:Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;)V

    .line 189
    .restart local v0       #holder:Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;
    const v1, 0x7f09032c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    :goto_0
    iget-object v1, v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSmallArray:[I
    invoke-static {v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$000(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigArray:[I
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$100(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v1

    add-int/lit8 v2, p1, -0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$200(Lcom/zhangdan/app/activities/main/SelectePicActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 197
    iget-object v1, v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageView;

    const v2, 0x7f02025e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 204
    :goto_1
    return-object p2

    .line 192
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;
    check-cast v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;
    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object v1, v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 215
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$300(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    new-instance v2, Lcom/zhangdan/app/img/PhotoSelectHandler;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-direct {v2, v3}, Lcom/zhangdan/app/img/PhotoSelectHandler;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$302(Lcom/zhangdan/app/activities/main/SelectePicActivity;Lcom/zhangdan/app/img/PhotoSelectHandler;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    .line 217
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$300(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/img/PhotoSelectHandler;->setOnImageSelectedListener(Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;)V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$300(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/img/PhotoSelectHandler;->pickPhotoFromGallery()V

    .line 233
    :goto_0
    return-void

    .line 220
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$300(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    new-instance v2, Lcom/zhangdan/app/img/PhotoSelectHandler;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-direct {v2, v3}, Lcom/zhangdan/app/img/PhotoSelectHandler;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$302(Lcom/zhangdan/app/activities/main/SelectePicActivity;Lcom/zhangdan/app/img/PhotoSelectHandler;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    .line 223
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$300(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/img/PhotoSelectHandler;->setOnImageSelectedListener(Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;)V

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$300(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/img/PhotoSelectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/img/PhotoSelectHandler;->takePhoto()V

    goto :goto_0

    .line 227
    :cond_3
    add-int/lit8 v0, p3, -0x2

    .line 228
    .local v0, pos:I
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #getter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigArray:[I
    invoke-static {v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$100(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    #setter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$202(Lcom/zhangdan/app/activities/main/SelectePicActivity;I)I

    .line 229
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$402(Lcom/zhangdan/app/activities/main/SelectePicActivity;I)I

    .line 230
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->this$0:Lcom/zhangdan/app/activities/main/SelectePicActivity;

    #calls: Lcom/zhangdan/app/activities/main/SelectePicActivity;->setBigImage()V
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->access$500(Lcom/zhangdan/app/activities/main/SelectePicActivity;)V

    .line 231
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
