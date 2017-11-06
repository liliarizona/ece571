function crypthill()

m=2;

ciphertext=['LMQETXYEAGTXCTUIEWNCTXLZEWUAISPZYVAPEWLMGQWYAXFTCJMSQCADAGTXLMDXNXSNPJQSYVAPRIQSMHNOCVAXFV'];
lengthcipher=length(ciphertext);

topdiagrams=['TH' 'HE' 'IN'];

candidate=['TX' 'EW' 'LM'];


topdiagramscombs=combnk(1:length(topdiagrams)/2,m)
candidatecombs=combnk(1:length(candidate)/2,m);
candidatecombs=[candidatecombs; candidatecombs(:,2) candidatecombs(:,1)];

numtdcombs=length(topdiagramscombs(:,1));
numcdcombs=length(candidatecombs(:,1));

for i=1:1:numtdcombs
  for j=1:1:numcdcombs
        tpcom=topdiagramscombs(i,:);
        tpcomchar=[topdiagrams(tpcom(1)*2-1) topdiagrams(tpcom(1)*2); topdiagrams(tpcom(2)*2-1) topdiagrams(tpcom(2)*2)]
        
        cdcom=candidatecombs(j,:);
        cdcomchar=[candidate(cdcom(1)*2-1) candidate(cdcom(1)*2); candidate(cdcom(2)*2-1) candidate(cdcom(2)*2)]
        
        ciphermat=l2nmat(cdcomchar)
        plainmat=l2nmat(tpcomchar)
        key=mod(minv(plainmat,26) * ciphermat, 26)
        
        %tempplainnum=[];
        tempplainchar=[];
        for k=1:1:lengthcipher/2
            subcipher=[ciphertext(2*k-1) ciphertext(2*k)];
            numsubcipher=l2nmat(subcipher);
            temp=mod(numsubcipher * minv(key,26),26);
            %tempplainnum=[tempplainnum temp];
            tempplainchar=[tempplainchar ' ' n2lmat(temp)];
        end
        tempplainchar
        %tempplainchar=n2lmat(tempplainnum)
    end
end
