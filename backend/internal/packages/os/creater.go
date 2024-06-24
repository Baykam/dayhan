package productOs

import (
	"fmt"
	"sync"
)

var (
	mt sync.Mutex
	gp sync.RWMutex
	br sync.Cond
)

func GetData(ff string) (data chan string) {
	data = make(chan string)
	go func() {
		mt.Lock()
		for i := 0; i < 100; i++ {
			if i == 99 {
				data <- ff
				mt.Unlock()
				break
			}
		}
	}()
	return data
}

func ReadData() {
	dataChan := GetData("sdasdada")
	loccc := DataWriteConc("sdfskfmdskfms")
	for data := range dataChan {
		fmt.Println(data)
	}

	for ggl := range loccc {
		fmt.Println(ggl)
	}
}

func DataWriteConc(ff string) chan string {
	gg := make(chan string)
	images := make(map[string]int, 100)
	go func() {
		mt.Lock()
		defer mt.Unlock()
		defer close(gg)
		for i, v := range images {
			if v == 15 {
				gg <- i
			}

		}
	}()
	return gg
}

func GGsadad(fh string) []chan int {
	hh := make([]chan int, 10)
	go func() {
		gp.RLocker()
		defer gp.RUnlock()
		for i := range hh {
			hh[i] = make(chan int, 10)
		}
	}()
	return hh
}

func FetchData(fg chan int) chan string {
	nww := make(chan string)
	go func() {
		br.L.Lock()
		defer br.L.Unlock()
		for ht := range fg {
			if ht == 12 {
				nww <- "asdasdadad"
				close(nww)
				return
			}
		}
		close(nww)
	}()
	return nww
}
