.class Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/SearchSmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchSmsAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mList:Ljava/util/List;

    .line 179
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 180
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/StringBuffer;)V
    .locals 5
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuffer;

    .line 185
    .local v1, temp:Ljava/lang/StringBuffer;
    const-string v2, "\u6b63\u5728"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const/4 v2, 0x2

    const-string v3, "\u5b8c\u6210"

    invoke-virtual {v1, v4, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v1           #temp:Ljava/lang/StringBuffer;
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 189
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 204
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 209
    if-nez p2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030103

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 212
    check-cast v1, Landroid/widget/TextView;

    .line 213
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 214
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    .line 215
    .local v0, str:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mEnd:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$700(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    return-object p2

    .line 219
    .restart local v0       #str:Ljava/lang/StringBuffer;
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
