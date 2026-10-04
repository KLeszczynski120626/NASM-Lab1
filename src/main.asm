global _start ;instrukcja do kompilatora wskazująca dla systemu operacyjnego miejsce od którego procesor powinien rozpocząć swoją pracę

section .text ;sekcja instrukcji dla maszyny
_start: ;etykieta oznaczająca miejsce rozpoczęcia działania kodu, można zmienić jej nazwę pod warunkiem ustawienia takiej samej nazwy w sekcji global oraz po przekazaniu informacji linkerowi w opcjach kompilacji
    mov rax, 12 ;przypisuje wartość dla rejestru rax → 12, w variables mamy 0xC ponieważ jest to zapisane w postaci heksadecymalnej c → 12
    mov rbx, 7 ;przypisujemy dla rbx wartość 7
    add rax, rbx ;dodajemy do rax rbx, rax jest teraz równy 19 w heksadcymalnym systemie i w variables → 13
    sub rax, 3 ;oddejmujemy 3 od rax, mamy teraz 16 czyli w heksie 10

    mov rcx, rax ;przypisujemy rejestrowi rcx wartość rax → 16 decymalnie
    add rcx, 10 ;dodajemy do rejestru rcx warość 10 → 26 decymalnie, 1A heksadecymalnie

    mov rdx, rcx ;przypisujemy rejestrowi rdx wartość rcx → rdx zmienia się z 0 na 26
    sub rdx, 4 ;odejmujemy 4 od warości 26 → dostajemy 22

    mov rax, 60 ;przypisujemy rejestrowi rax wartość 60, nie mamy już 16 tylko 60
    xor rdi, rdi ;porównuje wszystkie bity wartości rdi ze sobą i wykonuje na nich operację xor co skutkuje wyzerowaniem wartości
    syscall ;wywołuje system, w rax mamy wartość 60 co jest wartością oznaczającą zakończenie programu, numer funkcji sys_exit
