A=[3,2,4;2,0,2;4,2,3]
Aug = [A,eye(n,n)]
for j=1:n-1
    for i=j+1:n
        Aug(i,j:2*n) = Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
    end
end
for j=n:-1:2
    Aug(1:j-1,:) = Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:);
end
for j=1:n
    Aug(j,:) = Aug(j,:)/Aug(j,j);
end
B=Aug(:,n+1:2*n)

